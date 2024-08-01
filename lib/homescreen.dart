import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title:const  Text('Uzair-iftikhar WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.group),
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ],
            ),
            actions:  [
              const Icon(Icons.camera_alt),
              const SizedBox(width: 20,),
              const Icon(Icons.search),
              const SizedBox(width: 20,),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context,) =>const [
                    PopupMenuItem(
                        child:Text('New Group'),
                    ),
                    PopupMenuItem(
                      child:Text('Setting'),
                    ),
                    PopupMenuItem(
                      child:Text('Linked devices'),
                    ),
                  ]
              ),
              

             
            ],
          ),
           body: TabBarView(
            children: [
               Text('Groups'),
             ListView.builder(
                itemCount: 4,
                   itemBuilder: (context,index){
                     return const ListTile(
                       leading: CircleAvatar(
                         backgroundImage:AssetImage('assets/khan.jpeg')
                       ),
                       title: Text('Iftikhar'),
                       subtitle: Text('alaka whatsapp ma jor ko'),
                      trailing: Text('11:30 AM'),
                     );
                   }
               ),

              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                    if(index==0)
                      {
                        return  Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('New Update'),
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green,
                                          width: 4

                                      )
                                  ),
                                  child: CircleAvatar(
                                      backgroundImage:AssetImage('assets/khan.jpeg')
                                  ),
                                ),
                                title: Text('Iftikhar'),
                                subtitle: Text('Today ,9:15 am'),

                              ),
                            ],
                          ),
                        );
                      }
                    else
                      {
                        return  Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('New Update'),
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green,
                                          width: 4

                                      )
                                  ),
                                  child: CircleAvatar(
                                      backgroundImage:AssetImage('assets/khan.jpeg')
                                  ),
                                ),
                                title: Text('Iftikhar'),
                                subtitle: Text('Today ,9:15 am'),

                              ),
                            ],
                          ),
                        );
                      }

                  }
              ),
              ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context,index){
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundImage:AssetImage('assets/khan.jpeg')
                      ),
                      title: Text('Iftikhar'),
                      subtitle: Text('Yesterday ,7:34 am'),
                      trailing: Icon(index /2 ==0 ?Icons.phone:Icons.video_call),
                    );
                  }
              ),
          ]
    // );
     )
          )
    );

  }
}
