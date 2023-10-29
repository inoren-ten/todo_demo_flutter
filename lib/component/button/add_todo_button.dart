import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/constant/colors.dart';
import 'package:namer_app/provider/todos_provider.dart';

class AddTodoButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        final notifier = ref.read(todosNotifierProvider.notifier);
        notifier.addTodo();
      },
      shape: CircleBorder(),
      backgroundColor: AppColors.primaryBlue,
      child: Icon(
        Icons.add,
        color: AppColors.primaryWhite,
      ),
    );
  }
}
