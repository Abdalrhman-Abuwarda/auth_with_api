import 'package:flutter/material.dart';

class ListVii extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (contex, index) {
                return Widg(text: inn[index].toString(),
                );
              },
              itemCount: inn.length,),
            )
          ],
        ),
      ),
    );
  }
}

List<int> inn = [5, 3, 82, 6, 4, 89, 6, 4, 7, 33, 2, 51, 9];

class Widg extends StatelessWidget {
 String? text;

  Widg({Key? key,required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text('List Name1'),
      subtitle: Text('You can do that'),
      leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blue,

              borderRadius: BorderRadius.circular(30)
          ),

          child: Center(
            child: Text(text!,
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold)),
          )
      ),
    );
  }
}
