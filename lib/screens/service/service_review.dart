import 'package:flutter/material.dart';
import 'package:kaira/screens/service/service_completed.dart';

class ServiceReview extends StatelessWidget {
  const ServiceReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Booking #12KL23',
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 127.0, bottom: 35),
                  child: Image.asset('images/review.png'),
                ),
                const Text(
                  'How do you feel',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1f126b)),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 35, right: 60, left: 50),
                  child: Text(
                    'We’re here to listen to your comment. '
                        'Send us a review and get a voucher 5% '
                        'off on your next booking!',
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
                        width: MediaQuery.of(context).size.width * .4,
                        height: 56,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const ServiceCompleted())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff31aab7)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(14)))),
                            child: const Text(
                              'Review',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffffffff)),
                            ))),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        height: 56,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xfff4f3fd)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(14)))),
                            child: const Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff31aab7)),
                            ))),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
