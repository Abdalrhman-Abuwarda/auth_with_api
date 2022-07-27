import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });

}

class UsersScreen extends StatelessWidget {
  List<UserModel> useers = [
    UserModel(id: 0115,
        phone: "0097259242617",
        name: "Abdalrhman"),
    UserModel(id: 1,
        phone: "0097255280800",
        name: "Abdoullah"),
    UserModel(id: 2,
        phone: "0097259242617",
        name: "Dazdaz"),
    UserModel(id: 3,
        phone: "0097259242617",
        name: "Abdalrhman"),
    UserModel(id: 4,
        phone: "0097255280800",
        name: "Abdoullah"),
    UserModel(id: 5,
        phone: "0097259242617",
        name: "Dazdaz"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(itemBuilder: (context , index) => bulidUserItem(useers[index]), separatorBuilder: (context , index) => Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey.shade300,
      ), itemCount: useers.length),
    );
  }
}

Widget bulidUserItem(UserModel user) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    //mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 25,
        child: Text('${user.id}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("${user.name}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5,
          ),
          Text('${user.phone}', style: TextStyle(fontSize: 18, color: Colors.grey),)
        ],
      )
    ],
  ),
);


