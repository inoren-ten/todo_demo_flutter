import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/component/button/add_todo_button.dart';
import 'package:namer_app/component/header/main_header.dart';
import 'package:namer_app/component/todo/todo_list_box.dart';
import 'package:namer_app/provider/todos_provider.dart';

class TodosPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    return Scaffold(
      appBar: const MainHeader(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 15),
              for (var todo in todos)
                TodoListBox(
                  id: todo.id,
                  title: todo.title,
                  finish: todo.finish,
                ),
            ]),
          ),
        ],
      ),
      floatingActionButton: AddTodoButton(),
    );
  }
}
