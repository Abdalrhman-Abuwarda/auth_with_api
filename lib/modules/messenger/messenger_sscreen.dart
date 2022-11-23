import 'package:abdullah_mansor/api/api_responce.dart';
import 'package:abdullah_mansor/modules/login/login_screen.dart';
import 'package:abdullah_mansor/preferences/shared_controller.dart';
import 'package:abdullah_mansor/api/controllers/auth_api_controller.dart';
import 'package:abdullah_mansor/api/controllers/user_api_controller.dart';
import 'package:flutter/material.dart';
import '../../models/user_model.dart';
import '../../shared/components/wedgit/active_state_scrolling.dart';
import '../../shared/components/wedgit/person_chat_tile.dart';
import '../../shared/components/wedgit/search_bar.dart';
import '../../utils/router.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {

  late Future<List<User>> reaeUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reaeUser = UserApiController().read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Chat",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
              radius: 16,
              backgroundColor: Colors.blue,
              child: IconButton(
                  onPressed: () async {
                   await _logout(context);
                  },
                  icon: const Icon(
                    Icons.logout,
                    size: 16,
                    color: Colors.white,
                  ))),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
              const SizedBox(
                height: 20,
              ),
              ActiveStateHorisantalSocrolling(),
              const SizedBox(
                height: 30,
              ),
              FutureBuilder<List<User>>(
                  future: reaeUser,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasData) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return PersonChatTile(
                            name: snapshot.data![index].firstName,
                            hintMassege: snapshot.data![index].email,
                            imageUrl: snapshot.data![index].image,
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text('No Data'),
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {

      ApiResponce apiResponce = await AuthApiController().logout();
      if(apiResponce.status == true) {


    }
  }
}
