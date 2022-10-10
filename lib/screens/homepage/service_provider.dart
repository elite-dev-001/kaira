import 'package:flutter/material.dart';

import 'booking.dart';

class ServiceProvider extends StatefulWidget {
  const ServiceProvider({Key? key}) : super(key: key);

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  int currentTab = 0;
  bool premium = true;
  bool executive = false;

  void select() {
    setState(() {
      premium = !premium;
      executive = !executive;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .95,
                  child: Image.asset(
                    'images/Rectangle.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          service('Premium', 'Ayoleyi Samuel', '1,500.00', premium),
                          service('Executive', 'Tochukwu Alor', '2,100.00', executive),
                        ],
                      ),
                      SizedBox(
                        width: 268,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const Booking())),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff31aab7)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)))),
                            child: const Text(
                              'Select Premium',
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

  Widget service(String category, String name, String price, bool isActive) {
    return GestureDetector(
      onTap: () => select(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.87),
        width: 148,
        // height: 210,
        decoration: BoxDecoration(
            border: Border.all(color: isActive ? const Color(0xff31aab7) : const Color(0xffffffff) ),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 34),
              child: Text(
                category,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff31aab7)),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 9.0),
                  child: Text(name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff49493d))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.filter_alt,
                          size: 15,
                          color: Color(0xff222628),
                        ),
                        Text('4 yrs')
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time_filled,
                          size: 15,
                          color: Color(0xff222628),
                        ),
                        Text('1-4 min')
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 28.0),
                  child: Text(
                    'Solar installation,\nHouse wiring, Gen...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff959595)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 17.0),
              child: Text(price, style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff31aab7)
              ),),
            )
          ],
        ),
      ),
    );
  }
}
