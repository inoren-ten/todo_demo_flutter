import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/model/todo_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_provider.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  Map<String, dynamic> initialTodo = {'title': 'title', 'finish': false};

  @override
  List<TodoType> build() {
    return [];
  }

  void addTodo() {
    final TodoType newTodo = TodoType(
      title: 'task',
      finish: false,
    );
    final newState = [...state, newTodo];
    state = newState as List<TodoType>;
  }
}
