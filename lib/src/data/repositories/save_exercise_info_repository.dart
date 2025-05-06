import 'package:exercise_app/src/data/datasources/local/exercise_storage.dart';
import 'package:exercise_app/src/domain/entities/save_exercise_info.dart';
import 'package:exercise_app/src/domain/repositories/save_exercise_info_repository.dart';

class SaveExerciseInfoRepositoryImpl implements SaveExerciseInfoRepository {
  final ExerciseStorageImpl storage;

  SaveExerciseInfoRepositoryImpl(this.storage);

  @override
  Future<void> save(SaveExerciseInfo info) async {
    await storage.save(info);
  }

  @override
  Future<List<SaveExerciseInfo>> getAll() async {
    return await storage.getAll();
  }
}
