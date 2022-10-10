import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void close() => Navigator.pop(context);

  void callModal() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            titlePadding: const EdgeInsets.all(0.0),
            contentPadding: const EdgeInsets.all(0.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () => close(),
                    icon: const Icon(
                      Icons.close,
                      size: 20.79,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 40, right: 60),
                  child: Text(
                    'Hello Tochukwu, do you want to know more about our services?',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff31aab7),
                        height: 1.5),
                  ),
                ),
              ],
            ),
            content: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 17.0, left: 30, right: 59, bottom: 17),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur '
                    'adipiscing elit. Tellus tortor fringilla arcu '
                    'nullam id viverra pellentesque adipiscing. '
                    'Curabitur augue lacus, tristique commodo quis '
                    'nunc tortor et. uare',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff959595)),
                  ),
                ),
                Image.asset('images/workers.png')
              ],
            ),
          ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, callModal);
  }

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
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 48,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: 'Search for service',
                                  hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor: const Color(0xfff3f3f3)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10, top: 30),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xfff3f3f3)))),
                            child: Row(children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xff959595),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Add home',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff49493D)),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10, top: 24),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xfff3f3f3)))),
                            child: Row(children: const [
                              Icon(
                                Icons.home,
                                color: Color(0xff959595),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Set location on map',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff49493D)),
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 268,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const Search())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff31aab7)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)))),
                            child: const Text(
                              'Search',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )),
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
}
