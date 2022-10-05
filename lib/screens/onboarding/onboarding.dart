import 'package:flutter/material.dart';
import 'package:kaira/screens/auth/category.dart';
import 'package:kaira/screens/auth/login.dart';
// import 'package:kaira/screens/auth/sign_up.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final details = [
    {
      "image": "images/ob1.png",
      "title": "Quick and Easy Booking",
      "subtitle":
          "We offer a 3-step booking which solves your problem quick and easily"
    },
    {
      "image": "images/ob2.png",
      "title": "Security and Professionalism",
      "subtitle":
          "All our Artisans have transparent background and are well-trained"
    },
    {
      "image": "images/ob3.png",
      "title": "Give your home a Wow feeling",
      "subtitle": "We care about every small details to satisfy your needs"
          " when you use our service"
    },
  ];

  int currentIndex = 0;

  void rightBtn() {
    currentIndex == 0 || currentIndex == 1
        ? setState(() => currentIndex++)
        : Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyCategory()));
  }

  void leftBtn() {
    currentIndex == 0
        ? setState(() => currentIndex = 2)
        : currentIndex == 1
            ? setState(() => currentIndex = 0)
            : Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    final buttonData = [
      {
        'color': const Color(0xfff9f9fb),
        'text': btnText(currentIndex),
        'other': const Color(0XFF78789D),
        'func': () => leftBtn()
      },
      {
        'color': const Color(0XFF31AAB7),
        'text': currentIndex == 2 ? 'Sign up' : 'Next',
        'other': Colors.white,
        'func': () => rightBtn()
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(details[currentIndex]['image']!),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              details[currentIndex]['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Color(0XFF282B36),
                                  fontWeight: FontWeight.w600,
                                  height: 1.5),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                details[currentIndex]['subtitle']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Color(0XFF78789D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: details
                                .asMap()
                                .keys
                                .toList()
                                .map((e) => indicator(
                                      width: e == currentIndex ? 25 : null,
                                      color: e == currentIndex
                                          ? const Color(0XFF282B36)
                                          : null,
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: buttonData
                            .map((e) => button(
                                text: e['text'].toString(),
                                color: e['color'] as Color,
                                textColor: e['other'] as Color,
                                func: e['func'] as void Function()))
                            .toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  String btnText(int index) => index == 0
      ? 'Skip'
      : index == 1
          ? 'Back'
          : 'Log in';

  Widget indicator({double? width, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 5,
        width: width ?? 10,
        decoration: BoxDecoration(
            color: color ?? const Color(0XFFE5E5E5),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }

  Widget button(
      {required String text,
      required Color color,
      Color? textColor,
      required void Function() func}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      height: 50,
      child: ElevatedButton(
        onPressed: func,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)))),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
