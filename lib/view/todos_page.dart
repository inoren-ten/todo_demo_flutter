import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/component/button/add_todo_button.dart';
import 'package:namer_app/component/header/main_header.dart';
import 'package:namer_app/component/todo/todo_list_box.dart';
import 'package:namer_app/provider/todos_provider.dart';

class TodosPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends ConsumerState<TodosPage> {
  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todosNotifierProvider);

    return Scaffold(
      appBar: const MainHeader(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            for (var todo in todos)
              TodoListBox(
                id: todo.id,
                title: todo.title,
                finish: todo.finish,
              ),
          ]),
        ),
      ),
      floatingActionButton: AddTodoButton(),
    );
  }
}
