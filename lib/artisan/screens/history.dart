import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/artisan_account.dart';

import 'artisan_home.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
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
                        Icon(Icons.work_history, color: Color(0xffffffff)),
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
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const ArtisanAccount())),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.person_outline_outlined,
                                color: Color(0xffffffff)),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Account',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const History())),
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close, color: Color(0xff242a37))),
          title: const Text(
            'History',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xff242a37)),
          ),
          // centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 25),
          child: Column(
            children: data
                .map((e) => listTile(e['name'].toString(), e['fix'].toString(),
                    e['date'].toString(), e['stars'] as int))
                .toList(),
          ),
        ));
  }

  final data = [
    {
      "name": 'Allen Faith',
      "fix": 'Broken Door',
      "date": 'On 6th Jan',
      "stars": 5
    },
    {
      "name": 'David Jona',
      "fix": 'Broken cabinet',
      "date": 'On 12th Jan',
      "stars": 3
    },
    {
      "name": 'Florence Alex',
      "fix": 'Broken door handle',
      "date": 'on 20th Jan',
      "stars": 4
    },
    {
      "name": 'Gideon Whyte',
      "fix": '2 Broken Tables',
      "date": 'On 30th Jan',
      "stars": 5
    },
  ];

  List<Widget> star(int i) {
    var rows = <Widget>[];
    for (int j = 0; j < i; j++) {
      rows.add(const Icon(
        Icons.star,
        color: Color(0xffffc700),
      ));
    }
    if (i != 5) {
      for (int j = 0; j < (5 - i); j++) {
        rows.add(const Icon(
          Icons.star_border,
        ));
      }
    }
    return rows;
  }

  Widget listTile(String name, String fix, String date, int stars) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.only(bottom: 15),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xfff3f3f3)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                const SizedBox(height: 5),
                Row(
                  children: star(stars),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(fix),
                const SizedBox(height: 5),
                Text(date),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
