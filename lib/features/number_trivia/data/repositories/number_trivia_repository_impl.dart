import 'package:dartz/dartz.dart';

import '../../domain/entities/number_trivia_entity.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTriviaEntity>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
