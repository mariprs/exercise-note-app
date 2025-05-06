import 'dart:convert';
import 'dart:io';

import 'package:exercise_app/src/domain/entities/add_exercise_entity.dart';
import 'package:exercise_app/src/domain/entities/save_exercise_info.dart';

abstract class ExerciseStorage {
  Future<void> save(SaveExerciseInfo info);
  Future<List<SaveExerciseInfo>> getAll();
  Future<void> saveCustomExercise(AddExerciseEntity info);
  Future<List<AddExerciseEntity>> getAllCustomExercises();
}

class ExerciseStorageImpl implements ExerciseStorage {
  final String _exerciseDataFile = 'exercise_data.json';
  final String _customExerciseFile = 'custom_exercises.json';

  Future<File> get _exerciseDataRef async {
    final dir = await Directory.systemTemp
        .createTemp(); // trocar depois por path_provider ou outra lib pra não ficar numa pasta temp que pode ser apagada pelo celular, se for o path_provider, usar o getApplicationDocumentsDirectory()
    return File('${dir.path}/$_exerciseDataFile');
  }

  Future<File> get _customExerciseRef async {
    final dir = await Directory.systemTemp
        .createTemp(); // trocar depois por path_provider
    return File('${dir.path}/$_customExerciseFile');
  }

//salva treino atualizado
  @override
  Future<void> save(SaveExerciseInfo info) async {
    final file = await _exerciseDataRef;
    List<SaveExerciseInfo> currentData = await getAll();
    currentData.add(info);
    final jsonData = currentData.map((e) => e.toJson()).toList();
    await file.writeAsString(json.encode(jsonData));
  }

  @override
  Future<List<SaveExerciseInfo>> getAll() async {
    final file = await _exerciseDataRef;
    if (!await file.exists()) return [];
    final content = await file.readAsString();
    final decoded = json.decode(content) as List;
    return decoded.map((e) => SaveExerciseInfo.fromJson(e)).toList();
  }

//salva um exercicío personalizado
  @override
  Future<void> saveCustomExercise(AddExerciseEntity info) async {
    final file = await _customExerciseRef;
    List<AddExerciseEntity> current = await getAllCustomExercises();
    current.add(info);
    final jsonData = current.map((e) => e.toJson()).toList();
    await file.writeAsString(json.encode(jsonData));
  }

//retornando exercícios personalizados
  @override
  Future<List<AddExerciseEntity>> getAllCustomExercises() async {
    final file = await _customExerciseRef;
    if (!await file.exists()) return [];
    final content = await file.readAsString();
    final decoded = json.decode(content) as List;
    return decoded.map((e) => AddExerciseEntity.fromJson(e)).toList();
  }
}
