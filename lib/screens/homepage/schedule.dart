import 'package:flutter/material.dart';
import 'package:kaira/screens/service/service_detail.dart';

import '../personal/help.dart';
import '../personal/setting.dart';
import '../personal/support.dart';
import '../personal/user_profile.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {


  void logOut() => showDialog(
      context: context,
      builder: (builder) => AlertDialog(
        title: const Text('Are you sure you want logout?',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000))),
        content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: btns
                .map((e) =>
                logBtn(e['text'].toString(), e['color'] as Color))
                .toList()),
      ));

  final btns = [
    {'text': 'Cancel', 'color': const Color(0xffdb1f35)},
    {'text': 'Yes', 'color': const Color(0xff019a62)},
  ];

  Widget logBtn(String text, Color color) {
    return SizedBox(
      width: 110,
      child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          child: Text(text)),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: NavigationDrawer(
        logOut: logOut,
        scaffoldKey: _scaffoldKey,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/Oval.png'),
                  const Text('Good morning, Tochukwu',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff49493D))),
                  IconButton(
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xff49493D),
                      ))
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .85,
                  child: Image.asset(
                    'images/Rectangle.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  height: MediaQuery.of(context).size.height * .65,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: mapArrow(),
                          ),
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * .8,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 48,
                                  width: 275,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        suffixIcon: const Icon(
                                          Icons.my_location,
                                          color: Color(0xff959595),
                                        ),
                                        hintText: 'Electrician',
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: const Color(0xfff3f3f3)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  height: 48,
                                  width: 275,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        suffixIcon: const Icon(Icons.mic),
                                        hintText: 'Input your location',
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: const Color(0xfff3f3f3)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 29.0, bottom: 25),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          'See artisan details',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xff49493d)),
                                        ),
                                      ),
                                      Text(
                                        'All artisans are screened before their job\nand on an ongoing basis. see more',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff959595)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 6.0),
                                          child: Text(
                                            'Richard Obote',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Color(0xff31aab7)),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 11.0),
                                              child: Text(
                                                'Richard - 4.93',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff49493d)),
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xff31aab7),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.0),
                                              child: Text(
                                                '- 3,375 completed jobs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff49493d)),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 19.0),
                                    child: Image.asset('images/elect.png'),
                                  ),
                                  const Text(
                                    'Electrician',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff49493d)),
                                  ),
                                  const Text(
                                    '4 years',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xff49493d)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: widgets
                              .map((e) => circleBox(
                                  e['icon'] as Icon, e['text'].toString()))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => const ServiceDetail())),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xff31aab7)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ))
                          ),
                          child: const Text('Finish'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  final widgets = [
    {"text": 'Call', "icon": const Icon(Icons.local_phone_outlined)},
    {"text": 'Message', "icon": const Icon(Icons.chat_outlined)},
    {"text": 'Cancel', "icon": const Icon(Icons.close)},
  ];

  Widget circleBox(Icon icon, String text) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xffdadee3)),
          child: Align(
            alignment: Alignment.center,
            child: icon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 20),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff282f39)),
          ),
        )
      ],
    );
  }

  Widget mapArrow() {
    return Column(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: const Color(0xff31aab7),
              borderRadius: BorderRadius.circular(6)),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 4,
              width: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2), color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const Icon(
          Icons.location_on_rounded,
          size: 17,
          color: Color(0xff31aab7),
        )
      ],
    );
  }
}


class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer(
      {Key? key, required this.logOut, required this.scaffoldKey})
      : super(key: key);
  final Function logOut;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  void callNav(String text) {
    if (text == 'logout') {
      widget.scaffoldKey.currentState?.closeDrawer();
      widget.logOut();
    } else if (text == 'help') {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const Help()));
    } else if (text == 'settings') {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const Setting()));
    } else if (text == 'support') {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const Support()));
    } else if (text == 'profile') {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const UserProfile()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 188,
            color: const Color(0xff1197a3),
            child: Padding(
              padding: const EdgeInsets.only(top: 64.0, left: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('images/user.png'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Tochukwu Alor',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Wallet Balance: 120.00',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Top Up',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 48,
                      ),
                      Text(
                        'Transfer',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 51, left: 25),
            child: Column(
              children: myItems
                  .map(
                      (e) => items(e['icon'] as IconData, e['text'].toString()))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  final myItems = [
    {
      'icon': Icons.account_circle,
      'text': 'Profile',
    },
    {
      'icon': Icons.shopping_bag,
      'text': 'Your Service',
    },
    {
      'icon': Icons.help_center_rounded,
      'text': 'Help',
    },
    {
      'icon': Icons.insert_invitation,
      'text': 'Invite & Earn',
    },
    {
      'icon': Icons.support_agent,
      'text': 'Support',
    },
    {
      'icon': Icons.wallet_rounded,
      'text': 'Wallet',
    },
    {
      'icon': Icons.settings,
      'text': 'Settings',
    },
    {
      'icon': Icons.login_outlined,
      'text': 'Logout',
    },
  ];

  Widget items(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: GestureDetector(
        onTap: () => callNav(text.toLowerCase()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              icon,
              color: const Color(0xffbdbdbd),
            ),
            const SizedBox(
              width: 13,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff49493d)),
            )
          ],
        ),
      ),
    );
  }
}
