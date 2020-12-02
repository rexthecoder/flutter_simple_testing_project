import 'package:json_annotation/json_annotation.dart';
part 'quote.g.dart';

@JsonSerializable()
class Quote {
  String text;
  String author;

  Quote(this.text, this.author);

  factory Quote.fromJson(Map json) => _$QuoteFromJson(json);

  Map toJson() => _$QuoteToJson(this);
}
