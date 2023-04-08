import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/artisan_home.dart';
import 'package:kaira/artisan/screens/history.dart';
import 'package:kaira/artisan/screens/personal_detail.dart';
import 'package:kaira/screens/personal/help.dart';

class ArtisanAccount extends StatefulWidget {
  const ArtisanAccount({Key? key}) : super(key: key);

  @override
  State<ArtisanAccount> createState() => _ArtisanAccountState();
}

class _ArtisanAccountState extends State<ArtisanAccount> {
  @override
  Widget build(BuildContext context) {
    void myDetails() => Navigator.push(context, MaterialPageRoute(builder: (builder) => const PersonalDetails()));
    void help() => Navigator.push(context, MaterialPageRoute(builder: (builder) => const Help()));

    final data = [
      {"icon": Icons.person_outline_outlined, "text": 'Personal Details', "func": myDetails},
      {"icon": Icons.notifications_active_outlined, "text": 'Notification', "func": (){}},
      {"icon": Icons.info_outline_rounded, "text": 'Help', "func": help},
      {"icon": Icons.logout_outlined, "text": 'Log Out', "func": (){}},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              color: const Color(0xff1097a3),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff6e6be8).withOpacity(0.15),
                    offset: const Offset(0, 2),
                    blurRadius: 15,
                    spreadRadius: 0.0)
              ],
              // border: Border.all(),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const ArtisanHome())),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home_outlined, color: Color(0xffffffff)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffffff)),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const History())),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.work_history_outlined, color: Color(0xffffffff)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'History',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffffff)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.person, color: Color(0xffffffff)),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Account',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const ArtisanAccount())),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Color(0xffffffff),
                            size: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 80),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('images/adam.png'),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text('Hello,'), Text('Adams James', style: TextStyle(
                    color: Color(0xff1097a3),
                    fontWeight: FontWeight.bold
                  ),)],
                )
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: data
                  .map((e) => tab(e['icon'] as IconData, e['text'].toString(), e['func'] as Function))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }





  Widget tab(IconData icon, String text, Function func) {
    return GestureDetector(
      onTap: () => func(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xfff3f3f3)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [Icon(icon), const SizedBox(width: 8), Text(text)],
            ),
            const Icon(Icons.arrow_forward_ios, size: 14)
          ],
        ),
      ),
    );
  }
}
