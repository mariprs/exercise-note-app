// adicionar obrigatoriedade na hora de add o exercício, sendo impossível adicionar um exercício sem título, mas possível adicionar um exercício sem imagem
class AddExerciseEntity {
  final String title;
  final String? imagePath;

  AddExerciseEntity({
    required this.title,
    this.imagePath,
  });
}
