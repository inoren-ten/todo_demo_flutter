import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/component/header/main_header.dart';
import 'package:namer_app/provider/todos_provider.dart';

class TodosPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    return Scaffold(
      appBar: const MainHeader(),
      body: Column(children: [Text('$todos')]),
    );
  }
}
