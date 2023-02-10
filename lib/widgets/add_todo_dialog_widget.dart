import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddToDoDialogWidget extends StatefulWidget {
  const AddToDoDialogWidget({super.key});

  @override
  State<AddToDoDialogWidget> createState() => _AddToDoDialogWidgetState();
}

class _AddToDoDialogWidgetState extends State<AddToDoDialogWidget> {
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Add Todo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TodoFormWidget(
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedTitle: (description) =>
                setState(() => this.description = description),
            onSavedTodo: () {},
          )
        ],
      ),
    );
  }
}
