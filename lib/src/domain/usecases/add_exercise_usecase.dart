import 'package:exercise_app/src/domain/entities/add_exercise_entity.dart';
import 'package:exercise_app/src/domain/repositories/add_exercise_info_repository.dart';

class AddExerciseUsecase {
  final AddExerciseInfoRepository repository;

  AddExerciseUsecase(this.repository);
  Future<void> call(AddExerciseEntity info) {
    if (info.title.trim().isEmpty) {
      throw Exception('O exercício precisa ter um título');
    }
    return repository.save(info);
  }
}
