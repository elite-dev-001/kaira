import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/home.dart';
import 'package:kaira/screens/message/notification_detail.dart';

import '../service/processing.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              color: Colors.white,
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
                          builder: (builder) => const Home())),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home_outlined, color: Color(0xffb8b8d2)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffb8b8d2)),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const Processing())),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.event_note_outlined, color: Color(0xffb8b8d2)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Bookings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffb8b8d2)),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const MyNotification())),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.chat_bubble, color: Color(0xffb8b8d2)),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Chat',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff78789d)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 2, color: Color(0xff31aab7)))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.notifications,
                            color: Color(0xff31aab7),
                            size: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Notification',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffb8b8d2)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 23,
                      left: 31,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xfff7658b)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 30),
            child: Row(
              children: [
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xff31aab7))),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff31aab7),
                      size: 13,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 74.0),
                  child: Text(
                    'Notifications',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff1f126b)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
        child: ListView(
          children: data
              .map((e) => notify(e['img'].toString(), e['text1'].toString(),
                  e['text2'].toString(), e['color'] as dynamic))
              .toList(),
        ),
      ),
    );
  }

  final data = [
    {
      "img": 'images/rect9.png',
      "text1": 'Your shopping no #12424 was completed',
      "text2": '7 mins ago',
      "color": const Color(0xfff4f3fd)
    },
    {
      "img": 'images/rect10.png',
      "text1": 'Janet has arrived',
      "text2": '14 mins ago',
      "color": const Color(0xfff4f3fd)
    },
    {
      "img": 'images/rect9.png',
      "text1": 'Get 50% off when rating our service',
      "text2": '1/1/2021',
      "color": null
    },
    {
      "img": 'images/rect10.png',
      "text1": 'Your cleaning no #12343 was completed',
      "text2": '1/1/2021',
      "color": null
    },
    {
      "img": 'images/rect11.png',
      "text1": 'Now we got new service for your sofa',
      "text2": '1/1/2021',
      "color": null
    },
  ];

  Widget notify(String img, String text1, String text2, Color? bg) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) => const NotificationDetail())),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: bg ?? Colors.white,
              border: bg != null
                  ? const Border()
                  : Border.all(color: const Color(0xffeaeaff))),
          height: 100,
          child: Row(
            children: [
              Image.asset(img),
              const SizedBox(
                width: 23,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      text1,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1f1f39),
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff78789d),
                        overflow: TextOverflow.clip),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
