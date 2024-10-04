import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task List Classwork4',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 252, 252)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Task List Classwork4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final List<Map<String, dynamic>> listOfTasks = [];
final TextEditingController TaskController = TextEditingController();

// Functionality for adding task in list
 void addNewTask() {
    setState(() {
      listOfTasks.add({
        'taskName': TaskController.text,
        'CompletedTask': false,
      });
      TaskController.clear();
    });
  }

// Functionality for checking off task in list
void taskCompleteButton(int index, bool? value) {
  setState(() {
      listOfTasks[index]['CompletedTask'] = value!;
    });
  }

// Functionality for deleting task in list
void taskDeletion(int index) {
  setState(() {
    listOfTasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
        ),
      ),
      
    );
  }
}
