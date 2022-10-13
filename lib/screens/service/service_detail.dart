import 'package:flutter/material.dart';
import 'package:kaira/screens/service/pay_booking.dart';
import 'package:kaira/screens/worker/domestic.dart';

class ServiceDetail extends StatefulWidget {
  const ServiceDetail({Key? key}) : super(key: key);

  @override
  State<ServiceDetail> createState() => _ServiceDetailState();
}

class _ServiceDetailState extends State<ServiceDetail> {
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
                progress(),
                SizedBox(
                  width: 155,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const PayBooking())),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff31aab7)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: const Text('Next'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(238),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 32, top: 85),
              decoration: const BoxDecoration(
                  color: Color(0xff31aab7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 74.0),
                        child: Text(
                          'Pick a service',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '\$12.50/1 hour',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 18.0),
                              child: Text('Full house\nCleaning',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 150, left: 32, child: Image.asset('images/pic.png')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe5e5e5)),
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'This pack includes cleaning all floors, removing trash',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff38385e),
                      height: 1.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                children: data
                    .map((e) => lineWidget(e['icon'] as IconData,
                        e['text'].toString(), e['text2'].toString()))
                    .toList(),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xffeaeaff)))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 26.0, bottom: 20),
                    child: Text(
                      'Note',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff38385e)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      'Anything for us to notice?\nEg: Bathroom needs harder clean',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffb8b8d2),
                          height: 1.5),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Domestic worker',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff38385e),
                        height: 1.5),
                  ),
                  Row(
                    children: [
                      switchSlider(),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'My favorite',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff38385e),
                              height: 1.5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Row(
                children: [
                  worker('Janet Anderson', '5.0', 'images/img1.png',
                      const Color(0xffffebf0), first, 0),
                  worker('Jack Middleton', '4.5', 'images/img2.png',
                      const Color(0xff31aab7), last, 1),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xffeaeaff)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20.0, top: 26),
                          child: Text(
                            'Promotion code',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xff1f1f39)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 13.310),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.card_giftcard,
                                color: Color(0xff31aab7),
                                size: 18,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.39),
                                child: Text(
                                  'Your code here',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff38385e)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 98,
                    height: 37,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffffebf0)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      child: const Text(
                        'Button',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xfff7658b)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profilePic(String img, Color color) {
    return Container(
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
    );
  }

  // bool isChecked = true;
  bool first = true;
  bool last = false;

  void check(int index) =>
      setState(() => index == 0 ? first = !first : last = !last);

  Widget worker(String name, String rating, String img, Color color,
      bool checked, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 122,
        // height: 231,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffeaeaff)),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 8.0, bottom: 9.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => check(index),
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: Color(checked ? 0xff31aab7 : 0xffeaeaff),
                          borderRadius: BorderRadius.circular(4)),
                      child: Align(
                        alignment: Alignment.center,
                        child: checked
                            ? const Icon(
                                Icons.check,
                                size: 13,
                                color: Colors.white,
                              )
                            : const SizedBox(),
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite, size: 14, color: Color(0xfff7658b))
                ],
              ),
            ),
            profilePic(img, color),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 26, right: 26, bottom: 7),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    height: 1.5,
                    color: Color(0xff38385e)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff38385e)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Icon(
                    Icons.star,
                    size: 16,
                    color: Color(0xffffb457),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 13),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const DomesticWorker())),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xfff4f3fd)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: const Text(
                    'View',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff31aab7)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool selected = false;

  void changeSelect() => setState(() => selected = !selected);

  Widget switchSlider() {
    return GestureDetector(
      onTap: () => changeSelect(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2.7),
        height: 16.2,
        width: 27,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.4),
            color: Color(selected ? 0xff31aab7 : 0xfff4f3fd)),
        child: Align(
          alignment: selected ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            height: 10.8,
            width: 10.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.375),
                color: Color(selected ? 0xffffffff : 0xffb8b8d2)),
          ),
        ),
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
          width: 45,
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
          width: 45,
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

  final data = [
    {
      "icon": Icons.calendar_month_outlined,
      "text": "Monday - 22 Mar 2021",
      "text2": "Working day"
    },
    {"icon": Icons.access_time, "text": "12:30 PM", "text2": "Start time"},
    {
      "icon": Icons.location_on_outlined,
      "text": "Room 123, Brooklyn St, Kepler District",
      "text2": "Location"
    },
  ];

  Widget lineWidget(IconData icon, String text, String text2) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffeaeaff)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 26),
            child: Text(
              text2,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff1f1f39)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 13.310),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: const Color(0xff31aab7),
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.39),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff38385e)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
