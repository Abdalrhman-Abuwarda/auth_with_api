
import 'package:flutter/material.dart';

class PersonChatTile extends StatelessWidget {
  final String name;
  final String hintMassege;
  final String imageUrl;
  PersonChatTile({
    required this.name,
    required this.hintMassege,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //selectedTileColor: Colors.white,
      selected: false,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      leading: Stack(
        alignment: Alignment.bottomRight,
        children:  [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const CircleAvatar(
            radius: 11,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          Text(hintMassege,
              overflow: TextOverflow.ellipsis),
          const SizedBox(
            width: 10,
          ),
          // Text("${DateTime.now().hour}:${DateTime.now().minute}",
          //     overflow: TextOverflow.ellipsis
          // )
        ],
      ),
      trailing: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.grey.shade400,
          child: const Icon(
            Icons.check,
            size: 16,
            color: Colors.white,
          )),
    );
  }
}
