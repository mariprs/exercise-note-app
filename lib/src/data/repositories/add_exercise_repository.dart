import 'package:exercise_app/src/data/datasources/local/exercise_storage.dart';
import 'package:exercise_app/src/domain/entities/add_exercise_entity.dart';
import 'package:exercise_app/src/domain/repositories/add_exercise_info_repository.dart';

class AddExerciseInfoRepositoryImpl implements AddExerciseInfoRepository {
  final ExerciseStorage storage;

  AddExerciseInfoRepositoryImpl(this.storage);

  @override
  Future<void> save(AddExerciseEntity info) async {
    await storage.saveCustomExercise(info);
  }

  @override
  Future<List<AddExerciseEntity>> getAll() async {
    return await storage.getAllCustomExercises();
  }
}
