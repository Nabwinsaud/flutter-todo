import 'package:flutter/material.dart';
import 'package:mobile_deve/constant/colors.dart';

class TaskList extends StatelessWidget {
  // const TaskList({super.key});
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
        // leading: const Icon(Icons.arrow_back),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: kPurple,
      ),
      body: Column(
        children: const [
          TaskItem(label: 'Hello There'),
          TaskItem(label: 'Build some cool'),
          TaskItem(label: 'Huslte harder '),
          TaskItem(label: 'goona shine soon'),
          TaskItem(label: 'you people are precious'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Hello hustler');
        },
        backgroundColor: kPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;
  const TaskItem({super.key, required this.label});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Checkbox(value: _value, onChanged: null),
        // Checkbox(value: _value, onChanged: (newValue) => _value = newValue),

        // const Padding(padding: EdgeInsets.only(top: 10, left: 10)),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Checkbox(
            value: _value,
            onChanged: (newValue) => setState(() => _value = newValue),
          ),
        ),

        Text(widget.label)
      ],
    );
  }
}
