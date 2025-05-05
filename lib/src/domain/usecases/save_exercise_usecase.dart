// usecases = ações que as regras criadas nas entities vão realizar. regras de negócio ficam aqui!
import 'package:exercise_app/src/domain/entities/save_exercise_info.dart';
import 'package:exercise_app/src/domain/repositories/save_exercise_info_repository.dart';

class SaveExerciseInfoUsecase {
  final SaveExerciseInfoRepository repository;

  SaveExerciseInfoUsecase(this.repository);
  Future<void> call(SaveExerciseInfo info) {
    final reps = info.reps;
    final weight = info.weight;
    final rir = info.rir;

    // evitando que o user não digite as reps
    if (reps.length != weight.length || reps.length != rir.length) {
      throw Exception(
          'As listas de repetições, peso e RIR devem ter o mesmo tamanho.');
    }

    // verifica se todos os valores são positivos
    final isInvalid = reps.any((r) => r <= 0) ||
        weight.any((w) => w <= 0) ||
        rir.any((r) => r <= 0);

    if (isInvalid) {
      throw Exception(
          'Todos os valores de reps, peso e RIR devem ser maiores que zero.');
    }

    return repository.save(info);
  }
}
