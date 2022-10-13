import 'package:flutter/material.dart';

import '../service/processing.dart';


class NotificationDetail extends StatefulWidget {
  const NotificationDetail({Key? key}) : super(key: key);

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
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
                Column(
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
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            Container(
              height: 161,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Color(0xffaee8fc),
              ),
              child: Image.asset('images/rect13.png', width: 113,),
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Now we got new service for your sofa', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xff1f1f39),
                  height: 1.5
                ),),
                SizedBox(height: 15,),
                Text('1/1/2021', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff78789d)
                ),),
                SizedBox(height: 15,),
                Text('Lorem ipsum dolor sit amet, '
                    'consectetur adipiscing elit, sed do eiusmod '
                    'tempor incididunt ut labore et dolore magna '
                    'aliqua.Ut enim ad minim veniam, quis nostrud '
                    'exercitation ullamco laboris nisi ut aliquip '
                    'ex ea commodo consequat. ', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff38385e),
                    height: 1.5
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
