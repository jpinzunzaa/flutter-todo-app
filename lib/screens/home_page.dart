import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_tile.dart';
import 'package:todo_app/components/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  final _controller = TextEditingController();

  List todo_list = [];

  void handle_checkbox_change(bool? value, int index) {
    setState(() {
      todo_list[index][1] = !todo_list[index][1];
    });
  }

  void add_new_task() {
    setState(() {
      todo_list.add([_controller.text, false]);
    });
  }

  void create_new_task() {
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller: _controller,
        handle_submit: add_new_task,
        handle_cancel: () => Navigator.of(context).pop()
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: create_new_task,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todo_list.length,
        itemBuilder: (context, index) {
          return ToDoTile(task: todo_list[index][0], is_completed: todo_list[index][1], onChanged: (value) => handle_checkbox_change(value, index));
        },
      ),
    );
  }
}