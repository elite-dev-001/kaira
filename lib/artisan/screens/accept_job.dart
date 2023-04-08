import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/artisan_call.dart';
import 'package:kaira/artisan/screens/artisan_cancel.dart';
import 'package:kaira/artisan/screens/artisan_message.dart';
import 'package:kaira/artisan/screens/history.dart';
// import 'package:kaira/artisan/screens/start_work.dart';

class AcceptJob extends StatefulWidget {
  const AcceptJob({Key? key}) : super(key: key);

  @override
  State<AcceptJob> createState() => _AcceptJobState();
}

class _AcceptJobState extends State<AcceptJob> {
  bool clicked = false;
  bool loading = false;
  String text = 'Start Work';

  void onClick() {
    if (clicked) {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const History()));
    } else {
      setState(() => loading = true);
      Timer(
          const Duration(seconds: 5),
          () => setState(() =>
              {loading = false, clicked = true, text = 'Work Completed'}));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/artisanmap.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48,
            // left: MediaQuery.of(context).size.width * .11,
            // right: MediaQuery.of(context).size.width * .5,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 32),
              // width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.102))
                  ]),
              child: Row(
                children: const [
                  Icon(
                    Icons.location_history,
                    size: 30,
                    color: Color(0xff31aab7),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1 Ash Park, Pembroke Dock, SA72,\nDrury Lane, Oldham, OL9 7PH',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff282f39),
                        height: 1.5),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 47, left: 33, right: 33, bottom: 22),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, -5),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.102))
                  ]),
              child: Column(
                children: [
                  const Text(
                    'Electrical Installation',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff282f39)),
                  ),
                  SizedBox(
                    height: clicked ? 10 : 24,
                  ),
                  clicked
                      ? const SizedBox(
                          height: 0,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: data
                              .map((e) => circleIcon(
                                  e['icon'] as IconData, e['text'].toString()))
                              .toList(),
                        ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () => onClick(),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                        ),
                        child: loading
                            ? const Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(text),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void gotoCall() => Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const ArtisanCall()));

  void gotoMessage() => Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const ArtisanMessage()));

  void cancel() => Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const ArtisanCancel()));

  final data = [
    {"icon": Icons.phone_outlined, "text": 'Call'},
    {"icon": Icons.message_outlined, "text": 'Message'},
    {"icon": Icons.close, "text": 'Cancel'},
  ];

  Widget circleIcon(
    IconData icon,
    String text,
  ) {
    return GestureDetector(
      onTap: () => text.toLowerCase() == 'call'
          ? gotoCall()
          : text.toLowerCase() == 'message'
              ? gotoMessage()
              : cancel(),
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: const Color(0xffdadee3).withOpacity(0.15),
                borderRadius: BorderRadius.circular(24)),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                icon,
                size: 16,
                color: const Color(0xff464e65),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff282f39)),
          )
        ],
      ),
    );
  }
}
