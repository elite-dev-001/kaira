import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/home.dart';
import 'package:kaira/screens/message/message.dart';
import 'package:kaira/screens/service/service_map.dart';

import '../message/notification.dart';

class Processing extends StatefulWidget {
  const Processing({Key? key}) : super(key: key);

  @override
  State<Processing> createState() => _ProcessingState();
}

class _ProcessingState extends State<Processing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Icon(Icons.event_note_outlined,
                            color: Color(0xff31aab7)),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Bookings',
                            textAlign: TextAlign.center,
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
                          builder: (builder) => const MessageOne())),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: Color(0xffb8b8d2)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Chat',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffb8b8d2)),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const MyNotification())),
                      child: Column(
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
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
                    'Bookings',
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
            const Text(
              'Processing',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1f1268)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 30),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 24, left: 22, bottom: 32.91, right: 22),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeaeaff)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Booking no #12KL23',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff1f1f39)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm(
                          'Working time', 'Monday - 22 Mar 2021 - 12:30 PM'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm(
                          'Location', 'Room 123, Brooklyn St, Kepler District'),
                      const SizedBox(
                        height: 20,
                      ),
                      progress(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Janet is on the way',
                        style: TextStyle(
                            color: Color(0xfff7658b),
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 46,
                          child: ElevatedButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          const ServiceMap())),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xfff4f3fd)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)))),
                              child: const Text(
                                'View',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff31aab7)),
                              ))),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2, color: Color(0xff31aab7)))),
                  child: const Text(
                    'Completed',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1f126b)),
                  ),
                ),
                const Text(
                  'Cancelled',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffb8b8d2)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 24, left: 22, bottom: 32.91, right: 22),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeaeaff)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Booking no #12KL23',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff1f1f39)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '13 Mar 2021 - 12:30 PM\nRoom 123, Brooklyn St, Kepler District',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 2,
                            color: Color(0xff78789d)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Danny Johnson',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff78789d)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .32,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              const Processing())),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xfff4f3fd)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                  child: const Text(
                                    'View',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff31aab7)),
                                  ))),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .32,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xffffebf0)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                  child: const Text(
                                    'Book again',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xfff7658b)),
                                  ))),
                        ],
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 24, left: 22, bottom: 32.91, right: 22),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeaeaff)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Booking no #142353',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff1f1f39)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '13 Mar 2021 - 12:30 PM\nRoom 123, Brooklyn St, Kepler District',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 2,
                            color: Color(0xff78789d)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Kimberly Clark',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff78789d)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .32,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              const Processing())),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xfff4f3fd)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                  child: const Text(
                                    'View',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff31aab7)),
                                  ))),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .32,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xffffebf0)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                  child: const Text(
                                    'Book again',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xfff7658b)),
                                  ))),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget confirm(String text1, String text2) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              text1,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff38385e)),
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff78789d)),
          ),
        ],
      ),
    );
  }

  Widget progress() {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xfff3a8a2),
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 100,
          height: 0,
          decoration: BoxDecoration(
              // color: Color(0xfff3a8a2),
              border: Border.all(color: const Color(0xffffebf0))),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xffffebf0),
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 100,
          height: 0,
          decoration: BoxDecoration(
              // color: Color(0xfff3a8a2),
              border: Border.all(color: const Color(0xffffebf0))),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xffffebf0),
              borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
