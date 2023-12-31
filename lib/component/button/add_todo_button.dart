import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/component/modal/add_todo_modal.dart';
import 'package:namer_app/constant/colors.dart';
import 'package:namer_app/provider/todos_provider.dart';
import 'package:namer_app/view/add_todo_page.dart';

class AddTodoButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddTodoPage()));
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
