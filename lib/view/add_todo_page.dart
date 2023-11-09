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
  var bsckground;

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
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
              ),
              child: Text(
                '追加',
                style: TextStyle(
                  color: AppColors.primaryWhite,
                ),
              ),
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
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('タイトル',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  Text('${title.length}/20',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Todoのタイトル',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryBlue))),
                cursorColor: AppColors.primaryBlue,
                onChanged: (String value) {
                  setState(() {
                    title = value;
                  });
                },
                onSubmitted: (String value) {
                  if (value.length > 0) {
                    final notifier = ref.read(todosNotifierProvider.notifier);
                    notifier.addTodo(title: value);
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ));
  }
}
