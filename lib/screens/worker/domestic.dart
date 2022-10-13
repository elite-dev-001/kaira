import 'package:flutter/material.dart';
import 'package:kaira/screens/worker/worker_review.dart';

class DomesticWorker extends StatefulWidget {
  const DomesticWorker({Key? key}) : super(key: key);

  @override
  State<DomesticWorker> createState() => _DomesticWorkerState();
}

class _DomesticWorkerState extends State<DomesticWorker> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 46,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const WorkerReview())),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      child: const Text('Choose her now'),
                    ),
                  ),
                ],
              )),
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
                    'Profile',
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
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 14,
                      bottom: 14,
                      left: 62.11,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .65,
                        height: 108,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffeaeaff)),
                            borderRadius: BorderRadius.circular(25)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Richard Obote',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xff38385e)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.female_sharp,
                                      color: Color(0xfff7658b),
                                    ),
                                    Text(
                                      '4 year experience',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff78789d)),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xff31aab7),
                                    ),
                                    Text(
                                      'Garrison, BS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xff78789d)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 141.33,
                      width: 135,
                      decoration: const BoxDecoration(
                          color: Color(0xffffebf0),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            bottomRight: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                          ),
                          image: DecorationImage(
                              image: AssetImage('images/pro.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Specialized in',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1f126b)),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: data
                  .map((e) => skill(e['img'].toString(), e['text'].toString()))
                  .toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Text(
                  'Review (5.0 ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff1f126b)),
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Color(0xffffb457),
                ),
                Text(
                  ')',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff1f126b)),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2, color: Color(0xff583ef2)))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '5 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff38385e)),
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffffb457),
                      ),
                    ],
                  ),
                ),
                ...numbers.map((e) => myText(e)).toList()
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: reviews
                  .map((e) => myReviews(
                      e['img'].toString(),
                      e['title'].toString(),
                      e['subtitle'].toString(),
                      reviews.indexOf(e)))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: Image.asset('images/rect5.png'),
                ),
                Image.asset('images/rect6.png'),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  final reviews = [
    {
      "img": 'images/rect3.png',
      "title": "Stella Okachi",
      "subtitle":
          "I feel thankful for Richard's help. My House looks clean and fresh everytime she leaves"
    },
    {
      "img": 'images/rect4.png',
      "title": "Akinola Lurogho",
      "subtitle":
          "Richard makes me feel comfortable. Shes is very careful and I love it"
    }
  ];

  Widget myReviews(String img, String title, String subtitle, int index) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: index == 1 ? 20 : 0.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: index == 0
                  ? const BorderSide(color: Color(0xfff4f3fd))
                  : BorderSide.none)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(img),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff38385e))),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(subtitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff38385e)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  final numbers = ['4', '3', '2', '1'];

  Widget myText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xffb8b8d2)),
    );
  }

  final data = [
    {"img": "images/rect1.png", "text": "Electrical Installation"},
    {"img": "images/rect2.png", "text": "House Wiring & Rec"},
  ];

  Widget skill(String img, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        padding:
            const EdgeInsets.only(top: 20, bottom: 25, right: 16, left: 16),
        width: 122,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffeaeaff)),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff38385e)),
            )
          ],
        ),
      ),
    );
  }
}
