// O repository é "como fazer as regras que o usecase trouxe"

import 'package:exercise_app/src/domain/entities/save_exercise_info.dart';

abstract class SaveExerciseInfoRepository {
  Future<void> save(SaveExerciseInfo info);
  Future<List<SaveExerciseInfo>> getAll();
}
