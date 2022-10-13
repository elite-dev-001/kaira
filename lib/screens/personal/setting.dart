import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                    width: MediaQuery.of(context).size.width,
                    height: 46,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      child: const Text('Save'),
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
            const Text(
              'Language',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff38385e),
                  height: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'English - Nigeria',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff38385e),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff31aab7),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Notification',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff38385e)),
            ),
            Column(
              children: setData
                  .map((e) => switchSlider(e['text'].toString(),
                      e['data'] as bool, setData.indexOf(e).toInt()))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  bool selected = false;

  final setData = [
    {
      'text': 'Booking activity',
      'data': true,
    },
    {
      'text': 'Message',
      'data': true,
    },
    {
      'text': 'Promotion',
      'data': false,
    },
    {
      'text': 'Email notification',
      'data': false,
    },
  ];

  void changeSelect(bool val, int index) => setState(() {
        setData[index]['data'] = !val;
      });

  Widget switchSlider(String text, bool value, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => changeSelect(value, index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.7),
              height: 16.2,
              width: 27,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.4),
                  color: Color(value ? 0xff31aab7 : 0xfff4f3fd)),
              child: Align(
                alignment: value ? Alignment.centerLeft : Alignment.centerRight,
                child: Container(
                  height: 10.8,
                  width: 10.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.375),
                      color: Color(value ? 0xffffffff : 0xffb8b8d2)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.670),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff38385e),
                  height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}
