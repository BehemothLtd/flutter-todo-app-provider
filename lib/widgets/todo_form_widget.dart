import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;

  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onSavedTodo;

  const TodoFormWidget({
    super.key,
    required this.title,
    required this.description,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onSavedTodo,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }

  Widget buildTitle() {
    return TextFormField(
      initialValue: title,
      validator: (title) {
        if (title!.isEmpty) {
          return 'The title cannot be empty';
        }
        return null;
      },
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Title',
      ),
    );
  }
}
