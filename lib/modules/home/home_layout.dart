import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 50,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex =index;
          });
        },
        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.menu),
        label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.archive),
              label: 'Archived'),
          BottomNavigationBarItem(icon: Icon(Icons.done),
              label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home'),
        ],
      ),
    );
  }
}
