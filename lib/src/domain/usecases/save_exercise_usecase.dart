// usecases = ações que as regras criadas nas entities vão realizar. regras de negócio ficam aqui!
import 'package:exercise_app/src/domain/entities/save_exercise_info.dart';
import 'package:exercise_app/src/domain/repositories/save_exercise_info_repository.dart';

class SaveExerciseInfoUsecase {
  final SaveExerciseInfoRepository repository;

  SaveExerciseInfoUsecase(this.repository);
  Future<void> call (SaveExerciseInfo info) {
    if (info.reps <= 0 || info.weight <= 0 || info.rir <= 0) {
      throw Exception('Reps, peso e RIR devem ter valores válidos');
    }
    return repository.save(info);
  }

}