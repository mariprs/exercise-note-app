import 'package:equatable/equatable.dart';

abstract class AddExerciseState extends Equatable {
  const AddExerciseState();
  @override
  List<Object?> get props => [];
}

class AddExerciseInitial extends AddExerciseState {}

class AddExerciseLoading extends AddExerciseState {}

class AddExerciseSuccess extends AddExerciseState {}

class AddExerciseError extends AddExerciseState {
  final String message;
  const AddExerciseError(
      this.message); // pesquisar como configurar a mensagem dps pra catch o erro de forma menos genérica
  @override
  List<Object?> get props => [message];
}
