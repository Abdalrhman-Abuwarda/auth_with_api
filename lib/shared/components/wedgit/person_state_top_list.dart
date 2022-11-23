import 'package:flutter/material.dart';
class PersonStateTopList extends StatelessWidget {
  final String imageUrl;
  final String name;
   PersonStateTopList({
    required this.name,
     required this.imageUrl,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsetsDirectional.only(end: 8),
      child: SizedBox(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children:  [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  NetworkImage(imageUrl),
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
            const SizedBox(
              height: 7,
            ),
             Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
