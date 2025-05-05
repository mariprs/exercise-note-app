// a ideia aqui é que o input de um exercício não pode ser salvo sem reps, weight e rir, mas pode ser sem a description

class SaveExerciseInfo {
  final String exerciseId;
  final DateTime date;
  final List<int> reps;
  final List<int> weight;
  final List<int> rir;
  final String? description;

  SaveExerciseInfo({
    required this.reps,
    required this.weight,
    required this.rir,
    this.description,
    required this.date,
    required this.exerciseId,
  });

  Map<String, dynamic> toJson() => {
        'exerciseId': exerciseId,
        'date': date.toIso8601String(),
        'reps': reps,
        'weight': weight,
        'rir': rir,
        'description': description,
      };

  factory SaveExerciseInfo.fromJson(Map<String, dynamic> json) =>
      SaveExerciseInfo(
        exerciseId: json['exerciseId'],
        date: DateTime.parse(json['date']),
        reps: List<int>.from(json['reps']),
        weight: List<int>.from(json['weight']),
        rir: List<int>.from(json['rir']),
        description: json['description'],
      );
}
