import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trivia_app/core/usecases/usecases.dart';

import 'package:trivia_app/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:trivia_app/features/number_trivia/domain/usecases/get_random_number_trivia_usecase.dart';

import 'get_concrete_number_trivia_usecase_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  GetRandomNumberTriviaUseCase? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTriviaUseCase(mockNumberTriviaRepository!);
  });

  // Arrange
  const tNumberTrivia = NumberTriviaEntity(number: 1, text: 'test');

  test("Should get trivia from the repository", () async {
    // Arrange
    when(mockNumberTriviaRepository!.getRandomNumberTrivia()).thenAnswer((_) async => const Right(tNumberTrivia));
    // Act
    final result = await usecase!(NoParams());
    // Assert
    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository!.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
