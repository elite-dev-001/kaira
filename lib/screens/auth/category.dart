import 'package:flutter/material.dart';
// import 'package:kaira/screens/auth/login.dart';
import 'package:kaira/screens/auth/sign_up.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({Key? key}) : super(key: key);

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  bool selected = false;

  void select(int index) {
    setState(() {
      for (var element in catData) {
        element['tapped'] = false;
      }
      catData[index]['tapped'] = true;
      selected = true;
    });
  }

  void signUp(){
    if(selected){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/phone.png'),
                      const Text(
                        'Select Category',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'Choose category of service that suits you here',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: catData
                      .map((e) => catBox(
                          image: e['image'].toString(),
                          title: e['title'].toString(),
                          func: () => select(catData.indexOf(e)),
                          tapped: e['tapped'] as bool))
                      .toList(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 268,
                      child: ElevatedButton(
                          onPressed: () => signUp(),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color(selected ? 0XFF31AAB7 : 0XFFE5E9EF)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14)))),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final catData = [
    {'image': 'images/repair.png', 'title': 'Artisan', 'tapped': false},
    {'image': 'images/home.png', 'title': 'End Users', 'tapped': false},
    {'image': 'images/shop.png', 'title': 'Shop Owner', 'tapped': false},
  ];

  Widget catBox(
      {required String image,
      required void Function() func,
      required String title,
      required bool tapped}) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 88,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(tapped ? 0XFF31AAB7 : 0XFFE5E9EF),
            ),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 53.81,
              decoration: BoxDecoration(
                  color: const Color(0XFFF4F3FD),
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Signup as',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF78789D)),
                  ),
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
