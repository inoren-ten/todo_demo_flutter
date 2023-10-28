import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/model/todo_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_provider.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  List<TodoType> build() {
    return [];
  }
}
