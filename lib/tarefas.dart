import 'package:flutter/material.dart';
import 'addtarefas.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  void _toggleTask(Task task) {
    setState(() {
      task.isDone = !task.isDone;
    });
  }

  void _removeTask(Task task) {
    setState(() {
      tasks.remove(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO-DO LIST'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      tasks[index].name,
                      style: TextStyle(
                        decoration: tasks[index].isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: Checkbox(
                      value: tasks[index].isDone,
                      onChanged: (value) {
                        _toggleTask(tasks[index]);
                      },
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _removeTask(tasks[index]);
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () async {
                final newTask = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTaskScreen()),
                );
                if (newTask != null) {
                  setState(() {
                    tasks.add(Task(name: newTask));
                  });
                }
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// Classe para representar uma Tarefa
class Task {
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});
}
