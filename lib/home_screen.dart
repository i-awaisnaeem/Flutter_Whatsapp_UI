import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            bottom:  TabBar(
              tabs: [
                Expanded(
                  child: Tab(
                    child: badges.Badge(
                        position: badges.BadgePosition.topEnd(end: -15,top: -15),
                        badgeContent: const Text('1', style: TextStyle(color: Color(0xff008069), fontSize: 12),),
                        badgeStyle:  badges.BadgeStyle(badgeColor: Colors.white ,
                            padding:const  EdgeInsets.all(5),
                            borderRadius: BorderRadius.circular(0)
                        ),
                        child: const Text('Chats')),
                  ),
                ),
                const Expanded(
                  child: Tab(
                    child: Text('Status'),
                  ),
                ),
                Expanded(
                  child: Tab(
                    child: badges.Badge(
                        position: badges.BadgePosition.topEnd(end: -15,top: -15),
                        badgeContent: const Text('5', style: TextStyle(color: Color(0xff008069), fontSize: 12),),
                        badgeStyle:  badges.BadgeStyle(badgeColor: Colors.white ,
                            padding: const EdgeInsets.all(5),
                            borderRadius: BorderRadius.circular(0)
                        ),
                        child: const Text('Calls')),
                  ),
                ),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white70,
            ),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(width: 15),
              const Icon(Icons.search),
              const SizedBox(width: 1),
              PopupMenuButton(
                  itemBuilder: (
                      context,
                      ) =>
                  [
                    const PopupMenuItem(
                      value: '1',
                      child: Text('New Group'),
                    ),
                    const PopupMenuItem(
                      value: '2',
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem(
                      value: '3',
                      child: Text('Logout'),
                    )
                  ]),
              const SizedBox(width: 1)
            ],
          ),
          body: TabBarView(
            children: [
              Stack(
                  children:[ ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                          ),
                          title: Text('Mark Henry'),
                          subtitle: Text('Where are you?'),
                          trailing: Text('6:30 pm'),
                        );
                      }),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 145,width: 125,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff00A884),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.message, color: Colors.white,),
                          ),),
                      ),
                    )
                  ]),

              Stack(
                  children:[ ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('My Status'),
                              subtitle: Text('Tap to add a status update'),
                              trailing: Icon(Icons.more_horiz),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'New updates',
                                style: TextStyle(),
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green,
                                        width: 3
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage:  NetworkImage(
                                      'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                                ),
                              ),
                              title: const Text('Morgan'),
                              subtitle: const Text('35 min ago'),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green,
                                        width: 3
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage:  NetworkImage(
                                      'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                                ),
                              ),
                              title: const Text('Morgan'),
                              subtitle: const Text('35 min ago'),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green,
                                        width: 3
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage:  NetworkImage(
                                      'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                                ),
                              ),
                              title: const Text('Morgan'),
                              subtitle: const Text('35 min ago'),
                            ),
                            const  Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Viewed updates'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title: Text('Steve John'),
                              subtitle: Text('Yesterday at 11:35 pm'),
                            ),
                          ],
                        );
                      }),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 145,width: 125,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff00A884),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.camera_alt, color: Colors.white,),
                          ),),
                      ),
                    )
                  ]),

              Stack(
                  children:[ ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://static.vecteezy.com/system/resources/previews/014/625/363/non_2x/eps10-green-link-abstract-line-art-icon-isolated-on-white-background-hyperlink-or-chain-outline-symbol-in-a-simple-flat-trendy-modern-style-for-your-website-design-logo-and-mobile-app-vector.jpg'
                                ) ,),
                              title: Text('Create call link'),
                              subtitle: Text('Share a link for your Whatsapp call'),

                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Recent',
                                style: TextStyle(),
                              ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed voice call'),
                              trailing:
                              Icon( Icons.phone ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed voice call'),
                              trailing:
                              Icon( Icons.phone ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed voice call'),
                              trailing:
                              Icon( Icons.phone ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed voice call'),
                              trailing:
                              Icon( Icons.phone ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed voice call'),
                              trailing:
                              Icon( Icons.phone ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                            ListTile(
                              leading:  CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://thispersonnotexist.org/downloadimage/Ac3RhdGljL21hbi9zZWVkNDYwMzAuanBlZw=='),
                              ),
                              title:  Text('John Wick'),
                              subtitle:  Text( ' Missed video call'),
                              trailing:
                              Icon( Icons.video_call ),
                            ),
                          ],
                        );
                      }),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 145,width: 125,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff00A884),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.phone_outlined, color: Colors.white,),
                          ),),
                      ),
                    )
                  ]),
            ],
          ),
        ));
  }
}
