import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/model/todo_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_provider.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
// ignore: avoid_public_notifier_properties
  Map<String, dynamic> initialTodo = {'title': 'title', 'finish': false};

  @override
  List<TodoType> build() {
    return [];
  }

  void addTodo() {
    final TodoType newTodo = TodoType(
      id: state.length,
      title: 'task',
      finish: false,
    );
    final newState = [...state, newTodo];
    state = newState as List<TodoType>;
  }

  void handleFinishTodo({required int id}) {
    int index = state.indexWhere((element) => element.id == id);
    if (index != -1) {
      state[index] = TodoType(
          id: state[index].id,
          title: state[index].title,
          finish: !state[index].finish);
    }
  }

  void deleteTodo({required int id}) {
    int index = state.indexWhere((element) => element.id == id);
    if (index != -1) {
      state.removeAt(index);
    }
  }
}
