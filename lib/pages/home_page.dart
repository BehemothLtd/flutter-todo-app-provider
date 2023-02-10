import 'package:flutter/material.dart';
import 'package:todo_provider/widgets/add_todo_dialog_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.appTitle});

  final String appTitle;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [Container(), Container()];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Completed',
          )
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () => showDialog(
          context: context,
          builder: (_) => const AddToDoDialogWidget(),
        ),
      ),
    );
  }
}
