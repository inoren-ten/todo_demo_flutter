import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/constant/colors.dart';
import 'package:namer_app/provider/todos_provider.dart';

class TodoListBox extends ConsumerWidget {
  const TodoListBox({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);
    final todo = todos[id];
    final notifier = ref.read(todosNotifierProvider.notifier);

    return SizedBox(
      width: 350,
      child: Card(
        color: AppColors.primaryWhite,
        shadowColor: AppColors.primaryBlack,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Checkbox(
                  value: todo.finish,
                  onChanged: (bool? check) {
                    notifier.handleFinishTodo(id: id);
                  },
                ),
                Text(todo.title),
              ]),
              TextButton(
                  onPressed: () {
                    notifier.deleteTodo(id: id);
                  },
                  child: Icon(
                    Icons.delete_forever,
                    color: AppColors.primaryRed,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
