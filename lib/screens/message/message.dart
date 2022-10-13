import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/home.dart';
import 'package:kaira/screens/message/message_2.dart';
import 'package:kaira/screens/message/notification.dart';
import 'package:kaira/screens/service/processing.dart';

class MessageOne extends StatefulWidget {
  const MessageOne({Key? key}) : super(key: key);

  @override
  State<MessageOne> createState() => _MessageOneState();
}

class _MessageOneState extends State<MessageOne> {
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 2, color: Color(0xff31aab7)))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.chat_bubble, color: Color(0xff31aab7)),
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
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const MyNotification())),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Color(0xffb8b8d2),
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
                      Positioned(
                        top: 22,
                        left: 27,
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
                    'Message',
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
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xfff4f3fd)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.headphones_outlined, color: Color(0xff31aab7),),
                      SizedBox(width: 11,),
                      Text('Chat with support', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff31aab7)
                      ))
                    ],
                  ),
                ),
                const Icon(
                  Icons.search,
                  size: 32,
                  color: Color(0xff31aab7),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: userData
                  .map((e) => myChats(
                      hasMessage: e['hasMessage'] as bool,
                      img: e['img'].toString(),
                      title: e['title'].toString(),
                      subtitle: e['subtitle'].toString(),
                      time: e['time'].toString(),
                      color: e['color'] as Color,
                      number: e['number'].toString(),
                      isActive: e['isActive'] as bool))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }


  Widget unreadChat(String number) {
    return Container(
      height: 22,
      width: 22,
      decoration: const BoxDecoration(
        color: Color(0xff242a37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.21875),
          topRight: Radius.circular(63.2812),
          bottomRight: Radius.circular(63.2812),
          bottomLeft: Radius.circular(63.2812)
        )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(number, style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
      ),
    );
  }

  final userData = [
    {
      "img": "images/img1.png",
      "color": const Color(0xffffebf0),
      "isActive": true,
      "title": "Janet",
      "subtitle": "I'll arrive at 7:20 pm",
      "time": "1 min",
      'hasMessage': true,
      "number": '1'
    },
    {
      "img": "images/img3.png",
      "color": const Color(0xfff4f3fd),
      "isActive": false,
      "title": "Support - Lisa",
      "subtitle": "Do you need any help fr...",
      "time": "3 hours",
      'hasMessage': true,
      "number": '5+'
    },
    {
      "img": "images/rect7.png",
      "color": const Color(0xff31aab7),
      "isActive": false,
      "title": "Michael",
      "subtitle": "You: Thanks a lot",
      "time": "11/2/21",
      'hasMessage': false
    },
    {
      "img": "images/rect8.png",
      "color": const Color(0xffffebf0),
      "isActive": true,
      "title": "Christiana",
      "subtitle": "I buy all things you need",
      "time": "11/2/21",
      'hasMessage': false
    },
  ];

  Widget profilePic(String img, Color color, bool isActive) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5),
      width: 67,
      height: 64,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img)),
          color: color,
          border: Border.all(color: const Color(0xffeaeaff)),
          borderRadius: const BorderRadius.only(
              // topLeft: Radius.circular(2),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [active(isActive)],
      ),
    );
  }

  Widget active(bool active) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.5),
          color: Color( active ? 0xff31aab7 : 0xffb8b8d2)),
    );
  }

  Widget myChats({
    required bool hasMessage,
    required String img,
    required String title,
    required String subtitle,
    required String time,
    required Color color,
    required bool isActive,
    String? number
  }) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => const MessageTwo())),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, top: 20),
        decoration:
            const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffeaeaff)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profilePic(img, color, isActive),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1f1f39)),),
                    const SizedBox(height: 6,),
                    Text(subtitle,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff78789d)),),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(time,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff78789d)),),
                const SizedBox(height: 7,),
                hasMessage ? unreadChat(number!) : const SizedBox(height: 0,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
