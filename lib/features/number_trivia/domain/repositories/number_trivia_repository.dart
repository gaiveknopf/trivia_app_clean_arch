import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '/features/number_trivia/domain/entities/number_trivia_entity.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTriviaEntity>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia();
}
