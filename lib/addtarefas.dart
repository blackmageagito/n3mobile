import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(labelText: 'Nome da Tarefa'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String newTask = _taskController.text;
                Navigator.pop(context,
                    newTask); // Retorna à tela anterior com o nome da tarefa
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
