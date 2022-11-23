import 'package:abdullah_mansor/shared/components/wedgit/person_state_top_list.dart';
import 'package:abdullah_mansor/api/controllers/user_api_controller.dart';
import 'package:flutter/material.dart';

import '../../../models/user_model.dart';

class ActiveStateHorisantalSocrolling extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
        future: UserApiController().read(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator(),);
      } else if (snapshot.hasData) {
        return SizedBox(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index){
              return PersonStateTopList(name: snapshot.data![index].firstName, imageUrl: snapshot.data![index].image,);
            },
          ),
        );
      } else {
        return Center(child: Text('No Data'),);
      }
    });
    }
  }


// SizedBox(
// width: 20,
// ),
// PersonStateTopList(),
// SizedBox(
// width: 20,
// ),
// PersonStateTopList(),
// SizedBox(
// width: 20,
// ),
// PersonStateTopList(),
// SizedBox(
// width: 20,
// ),
// PersonStateTopList(),
// SizedBox(
// width: 20,
// ),
// PersonStateTopList(),
// SizedBox(
// width: 20,
// ),