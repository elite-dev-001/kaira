import 'package:flutter/material.dart';
import 'package:kaira/screens/service/service_detail.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/Oval.png'),
                  const Text('Good morning, Tochukwu',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff49493D))),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xff49493D),
                      ))
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .85,
                  child: Image.asset(
                    'images/Rectangle.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  height: MediaQuery.of(context).size.height * .65,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: mapArrow(),
                          ),
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * .8,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 48,
                                  width: 275,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        suffixIcon: const Icon(
                                          Icons.my_location,
                                          color: Color(0xff959595),
                                        ),
                                        hintText: 'Electrician',
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: const Color(0xfff3f3f3)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  height: 48,
                                  width: 275,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        suffixIcon: const Icon(Icons.mic),
                                        hintText: 'Input your location',
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: const Color(0xfff3f3f3)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 29.0, bottom: 25),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          'See artisan details',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xff49493d)),
                                        ),
                                      ),
                                      Text(
                                        'All artisans are screened before their job\nand on an ongoing basis. see more',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xff959595)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 6.0),
                                          child: Text(
                                            'Richard Obote',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Color(0xff31aab7)),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 11.0),
                                              child: Text(
                                                'Richard - 4.93',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff49493d)),
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xff31aab7),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.0),
                                              child: Text(
                                                '- 3,375 completed jobs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff49493d)),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 19.0),
                                    child: Image.asset('images/elect.png'),
                                  ),
                                  const Text(
                                    'Electrician',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xff49493d)),
                                  ),
                                  const Text(
                                    '4 years',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xff49493d)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: widgets
                              .map((e) => circleBox(
                                  e['icon'] as Icon, e['text'].toString()))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => const ServiceDetail())),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xff31aab7)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ))
                          ),
                          child: const Text('Finish'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  final widgets = [
    {"text": 'Call', "icon": const Icon(Icons.local_phone_outlined)},
    {"text": 'Message', "icon": const Icon(Icons.chat_outlined)},
    {"text": 'Cancel', "icon": const Icon(Icons.close)},
  ];

  Widget circleBox(Icon icon, String text) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xffdadee3)),
          child: Align(
            alignment: Alignment.center,
            child: icon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 20),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff282f39)),
          ),
        )
      ],
    );
  }

  Widget mapArrow() {
    return Column(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: const Color(0xff31aab7),
              borderRadius: BorderRadius.circular(6)),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 4,
              width: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2), color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const Icon(
          Icons.location_on_rounded,
          size: 17,
          color: Color(0xff31aab7),
        )
      ],
    );
  }
}
