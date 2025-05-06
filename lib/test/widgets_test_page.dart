import 'package:exercise_app/src/presentation/exercise/search_exercise/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class TestWidgetsPage extends StatelessWidget {
  const TestWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SearchBarWidget(
          hintText: 'Busque seu exercício...',
          onSearchTap: () => print('🔍 Buscando...'),
          onAddTap: () => print('➕ Adicionando exercício...'),
        ),
      ),
    );
  }
}
