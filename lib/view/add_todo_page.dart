import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/constant/colors.dart';
import 'package:namer_app/provider/todos_provider.dart';

class AddTodoPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends ConsumerState<AddTodoPage> {
  var title = '';
  var backgroundColor = AppColors.primaryPaleGray;

  @override
  Widget build(BuildContext context) {
    if (title.length > 0) {
      backgroundColor = AppColors.primaryBlue;
    } else {
      backgroundColor = AppColors.primaryPaleGray;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        foregroundColor: AppColors.textColor,
        leading: TextButton(
          child: Icon(
            Icons.clear,
            color: AppColors.textColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Todoを追加'),
        actions: [
          ElevatedButton(
            style: ButtonStyle(),
            child: Text('追加'),
            onPressed: () {
              if (title.length > 0) {
                final notifier = ref.read(todosNotifierProvider.notifier);
                notifier.addTodo(title: title);
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Todoのタイトル',
            ),
            onChanged: (String value) {
              title = value;
            },
          )
        ],
      ),
    );
  }
}
