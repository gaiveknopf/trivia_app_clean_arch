import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/number_trivia_entity.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTriviaUseCase implements UseCase<NumberTriviaEntity, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTriviaUseCase(this.repository);

  @override
  Future<Either<Failure, NumberTriviaEntity>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
