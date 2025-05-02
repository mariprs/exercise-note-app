import 'package:exercise_app/src/domain/entities/add_exercise_entity.dart';

abstract class AddExerciseInfoRepository {
  Future<void> save(AddExerciseEntity info);
}
