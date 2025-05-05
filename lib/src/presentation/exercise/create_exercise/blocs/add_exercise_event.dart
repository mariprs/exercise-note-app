// evento de pressionar o botão para adicionar
import 'package:equatable/equatable.dart' show Equatable;
import 'package:exercise_app/src/domain/entities/add_exercise_entity.dart';

abstract class AddExerciseEvent extends Equatable {
  const AddExerciseEvent();
  @override
  List<Object?> get props => [];
}

class AddExercisePressed extends AddExerciseEvent {
  final AddExerciseEntity exercise;
  const AddExercisePressed(this.exercise);
  @override
  List<Object?> get props => [exercise];
}
