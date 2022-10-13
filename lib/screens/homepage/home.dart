import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/search.dart';
import 'package:kaira/screens/personal/help.dart';
import 'package:kaira/screens/personal/setting.dart';
import 'package:kaira/screens/personal/support.dart';
import 'package:kaira/screens/personal/user_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void close() => Navigator.pop(context);

  void callModal() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            titlePadding: const EdgeInsets.all(0.0),
            contentPadding: const EdgeInsets.all(0.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () => close(),
                    icon: const Icon(
                      Icons.close,
                      size: 20.79,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 40, right: 60),
                  child: Text(
                    'Hello Tochukwu, do you want to know more about our services?',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff31aab7),
                        height: 1.5),
                  ),
                ),
              ],
            ),
            content: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 17.0, left: 30, right: 59, bottom: 17),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur '
                    'adipiscing elit. Tellus tortor fringilla arcu '
                    'nullam id viverra pellentesque adipiscing. '
                    'Curabitur augue lacus, tristique commodo quis '
                    'nunc tortor et. uare',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff959595)),
                  ),
                ),
                Image.asset('images/workers.png')
              ],
            ),
          ));

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, callModal);
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
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 48,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: 'Search for service',
                                  hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor: const Color(0xfff3f3f3)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10, top: 30),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xfff3f3f3)))),
                            child: Row(children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xff959595),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Add home',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff49493D)),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10, top: 24),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xfff3f3f3)))),
                            child: Row(children: const [
                              Icon(
                                Icons.home,
                                color: Color(0xff959595),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Set location on map',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff49493D)),
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 268,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const Search())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff31aab7)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)))),
                            child: const Text(
                              'Search',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )),
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
