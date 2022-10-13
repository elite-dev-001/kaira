import 'package:flutter/material.dart';
import 'package:kaira/screens/service/service_cancelled.dart';

class ServiceCompleted extends StatefulWidget {
  const ServiceCompleted({Key? key}) : super(key: key);

  @override
  State<ServiceCompleted> createState() => _ServiceCompletedState();
}

class _ServiceCompletedState extends State<ServiceCompleted> {
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
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Stack(
                  // fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffffebf0))),
                    ),
                    Positioned.fill(
                      top: -10,
                      bottom: -10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: const Color(0xfff3a8a2),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: const Color(0xffffebf0),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: const Color(0xffffebf0),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Completed',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xfff7658b),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 25),
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
                        'Booking detail',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff31aab7)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Working time', 'Monday - 22 Mar 2021\n12:30 PM'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm(
                          'Location', 'Room 123, Brooklyn St, Kepler District'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Note', 'No note added'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Domestic worker', 'Janet Kim'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Working hour', '3 hours - 12:30 PM to 15:30 PM'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Cost', '\$37.50'),
                      const SizedBox(
                        height: 20,
                      ),
                      confirm('Method', 'Credit Card')
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .38,
                    height: 46,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xfff4f3fd)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        child: const Text(
                          'Review',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff31aab7)),
                        ))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .38,
                    height: 46,
                    child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    const ServiceCancelled())),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffffebf0)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
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
}
