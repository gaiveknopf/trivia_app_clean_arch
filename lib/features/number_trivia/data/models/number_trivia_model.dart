import '../../domain/entities/number_trivia_entity.dart';

class NumberTriviaModel extends NumberTriviaEntity {
  const NumberTriviaModel({
    required int number,
    required String text,
  }) : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      number: (json['number'] as num).toInt(),
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
    };
  }
}
