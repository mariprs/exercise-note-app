// regras de negócio. A ideia aqui é que o input de um exercício não pode ser salvo sem reps, weight e rir, mas pode ser sem a description
class SaveExerciseInfo {
  final int reps;
  final int weight;
  final int rir;
  final String? description;

  SaveExerciseInfo(
      {required this.reps,
      required this.weight,
      required this.rir,
      this.description});
}
