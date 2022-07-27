import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
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
              icon: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/man.png'),
                              ),
                              CircleAvatar(
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
                          const Text(
                            'Abdalrhman Abuwarda',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
              ListTile(
                //selectedTileColor: Colors.white,
                selected: false,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                title: const Text('Abdalrhman Abuearda'),
                subtitle: Row(
                  children: [
                    const Text('bla bal blaa '),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString())
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
