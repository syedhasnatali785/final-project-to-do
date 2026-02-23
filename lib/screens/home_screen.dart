import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController insertFieldController = TextEditingController();

  List<String> tasks = [];
  List<bool> isCheckedList = [];
  @override
  void dispose() {
    insertFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-do App'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Row(
              children: [
                Expanded(child: TextField(controller: insertFieldController)),
                ElevatedButton(
                  onPressed: () {
                    if (insertFieldController.text.isNotEmpty) {
                      setState(() {
                        tasks.add(insertFieldController.text);
                        isCheckedList.add(false);
                        insertFieldController.clear();
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Add'), Icon(Icons.add)],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              'Tasks',
              style: TextStyle(fontSize: 25, color: Colors.black),
              textAlign: TextAlign.left,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(tasks[index] + index.toString()),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Task Deleted!')));
                      setState(() {
                        tasks.removeAt(index);
                        isCheckedList.removeAt(index);
                      });
                    },
                    child: ListTile(
                      title: Text(tasks[index]),
                      leading: Checkbox(
                        value: isCheckedList[index],
                        onChanged: (bool? newValue) {
                          setState(() {
                            isCheckedList[index] = newValue!;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
