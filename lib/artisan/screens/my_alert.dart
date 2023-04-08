import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/complete_reg.dart';
import 'package:kaira/artisan/screens/verify_code.dart';

class MyAlert extends StatefulWidget {
  const MyAlert(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.text1,
      required this.text2})
      : super(key: key);
  final String title;
  final String subtitle;
  final String? text1;
  final String text2;

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc4c4c4),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                  height: 179,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff282f39)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.subtitle,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7f7f7f)),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.text1 ?? '',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff31aab7)),
                          ),
                          const SizedBox(
                            width: 39,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        widget.text2.toLowerCase() != 'okay'
                                            ? const VerifyOTP()
                                            : const CompleteRegistration())),
                            child: Text(
                              widget.text2,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff31aab7)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
