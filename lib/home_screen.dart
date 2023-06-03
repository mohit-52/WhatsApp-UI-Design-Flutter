import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10,),

            PopupMenuButton(
                icon: const Icon(Icons.more_horiz),
                itemBuilder: (context) =>
                [
                  const PopupMenuItem(child: Text("New Group"),),
                  const PopupMenuItem(child: Text("Settings"),),
                  const PopupMenuItem(child: Text("log Out"),),
                ]),

            const SizedBox(width: 10,),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            //CAMERA
            Center(child: Icon(Icons.camera_alt, size: 100,),),

            //CHATS
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                     "https://images.pexels.com/photos/3379934/pexels-photo-3379934.jpeg?auto=compress&cs=tinysrgb&w=600"
                  ),
                ),
                title: Text("John Wick"),
                subtitle: Text("Where is my dog??"),
                trailing: Text("6.37"),
              );
            }),

            // STATUS
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if(index == 0){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5.0, bottom: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green,
                                      width: 3
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/3379934/pexels-photo-3379934.jpeg?auto=compress&cs=tinysrgb&w=600"
                                ),
                              ),
                            ),
                            title: Text("My Status"),
                            subtitle: Text("24 minutes ago"),
                          ),
                          Text("Recent Updates")
                        ],
                      ),
                    );
                  }else{
                    return Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child:
                      ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green,
                                      width: 3
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/3379934/pexels-photo-3379934.jpeg?auto=compress&cs=tinysrgb&w=600"
                                ),
                              ),
                            ),
                            title: Text("My Status"),
                            subtitle: Text("24 minutes ago"),
                          ),

                    );
                  }
                }),

            // CALLS
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3379934/pexels-photo-3379934.jpeg?auto=compress&cs=tinysrgb&w=600"
                      ),
                    ),
                    title: Text("John Wick"),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received),
                        SizedBox(height: 8,),
                        Text(index/2 == 0 ?  "Yesterday, 3:43PM" : "You have a missed Video  call")
                      ],
                    ),
                    trailing: index/2 == 0 ? Icon(Icons.call): Icon(Icons.video_call),
                  );
                }),
          ],
        ),

      ),
    );
  }
}
