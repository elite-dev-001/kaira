import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
                    'Settings',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: btns
                  .map((e) => logBtn(e['text'].toString(), e['color'] as Color,
                      e['icon'] as IconData, e['tColor'] as Color))
                  .toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Frequently asked questions',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff31aab7)),
            ),
            support('What is our process?'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xffeaeaff)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'How the rate is calculated?',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff1f1f39)),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Color(0xff31aab7),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Text(
                      'We have a timer for our worker to '
                      'confirm their start time and their end time with you.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.8,
                          color: Color(0xff1f1f39)),
                    )
                  ],
                ),
              ),
            ),
            support('Can i get a compensation?'),
            support('How can I complain?'),
            support('Where to get my invoice?'),
            support('Can I change a worker?')
          ],
        ),
      ),
    );
  }

  Widget support(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xffeaeaff)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1f1f39)),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff31aab7),
            )
          ],
        ),
      ),
    );
  }

  final btns = [
    {
      'text': 'Chat',
      'color': const Color(0xfff4f3fd),
      'icon': Icons.headset_mic,
      'tColor': const Color(0xff31aab7)
    },
    {
      'text': 'Call',
      'color': const Color(0xffffebf0),
      'icon': Icons.call_rounded,
      'tColor': const Color(0xfff7658b)
    },
  ];

  Widget logBtn(String text, Color color, IconData icon, Color tColor) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .37,
      height: 50,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: tColor,
                size: 15,
              ),
              const SizedBox(
                width: 11,
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 14, color: tColor),
              ),
            ],
          )),
    );
  }
}
