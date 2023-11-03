import 'package:flutter/material.dart';
import 'package:namer_app/constant/colors.dart';

void addTodoModal({required BuildContext context}) async {
  var result = await showDialog(
      context: context,
      builder: (_) {
        return Container(
          width: 500,
          color: AppColors.primaryWhite,
          child: Column(children: [
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Todoのタイトル',
            //   ),
            //   onChanged: (val) {},
            // ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('add'))
          ]),
        );
      });
}
