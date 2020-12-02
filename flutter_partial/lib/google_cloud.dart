import 'package:flutter/services.dart';
import 'package:googleapis/vision/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

class CredentialsProvider {
  CredentialsProvider();

  Future<ServiceAccountCredentials> get _credentials async {
    String _file = await rootBundle.loadString('assets/service-account-file.json');
    return ServiceAccountCredentials.fromJson(_file);
  }

  Future<AutoRefreshingAuthClient> get client async {
    AutoRefreshingAuthClient _client = await clientViaServiceAccount(
        await _credentials, [VisionApi.CloudVisionScope]).then((c) => c);
    return _client;
  }
}

class RekognizeProvider {
  var _client = CredentialsProvider().client;

  Future<WebLabel> search(String image) async {
    var _vision = VisionApi(await _client);
    var _api = _vision.images;
    var _response = await _api.annotate(BatchAnnotateImagesRequest.fromJson({
      "requests": [
        {
          "image": {"content": image},
          "features": [
            {"type": "WEB_DETECTION"}
          ]
        }
      ]
    }));

    WebLabel _bestGuessLabel;
    _response.responses.forEach((data) {
      var _label = data.webDetection.bestGuessLabels;
      _bestGuessLabel = _label.single;
    });

    return _bestGuessLabel;
  }
}
