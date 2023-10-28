import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/provider/todos_provider.dart';

class TodosPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: Column(children: [Text('$todos')]),
    );
  }
}
