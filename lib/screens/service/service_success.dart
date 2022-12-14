import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/home.dart';
import 'package:kaira/screens/service/processing.dart';

class ServiceSuccess extends StatelessWidget {
  const ServiceSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 127.0, bottom: 35),
                  child: Image.asset('images/success.png'),
                ),
                const Text(
                  'Success',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1f126b)),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 35, right: 60, left: 50),
                  child: Text(
                    'Ready to say Wow? Now you can track '
                    'your booking or go back to home screen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff38385e),
                        height: 1.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 148,
                        height: 56,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const Processing())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xfff4f3fd)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)))),
                            child: const Text(
                              'Track',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff31aab7)),
                            ))),
                    SizedBox(
                        width: 148,
                        height: 56,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const Home())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffffebf0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)))),
                            child: const Text(
                              'Home',
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
    );
  }
}
