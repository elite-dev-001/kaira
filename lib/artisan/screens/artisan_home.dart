import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/view_summary.dart';

class ArtisanHome extends StatefulWidget {
  const ArtisanHome({Key? key}) : super(key: key);

  @override
  State<ArtisanHome> createState() => _ArtisanHomeState();
}

class _ArtisanHomeState extends State<ArtisanHome> {
  bool viewed = false;
  bool online = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu, color: Color(0xff49493d)),
                Text(
                  'You\'re ${online ? 'Online' : 'Offline'}',
                  style: TextStyle(
                      color: Color(online ? 0xff31aab7 : 0xffd8d8d8),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset('images/Oval.png')
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/artisanmap.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              // height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Colors.white),
              child: buildSheet(),
            ),
          )
        ],
      ),
    );
  }

  final modeData = [
    ["Acceptance", 'accept', "95.0%"],
    ["Overall Rating", 'rating', "4.75"],
    ["Cancellations", 'cancel', "2.0%"],
  ];

  void viewSummary() => setState(() => viewed = !viewed);

  void switchOnline() => setState(() => online = !online);

  Widget buildSheet() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Swipe to go ${online ? 'offline' : 'online'}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xffbdbdbd)),
                ),
                GestureDetector(
                  onTap: () => switchOnline(),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(online ? 0xff31aab7 : 0xffd8d8d8),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(99)),
                    child: Align(
                      alignment:
                          online ? Alignment.centerLeft : Alignment.centerRight,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(online ? 0xff31aab7 : 0xffd8d8d8)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            GestureDetector(
              onTap: () => viewSummary(),
              child: Column(
                children: [
                  Text(viewed ? '' : 'View Earnings'),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () => viewSummary(),
                    child: Container(
                      height: 3,
                      width: 30,
                      color: const Color(0xffc4c4c4),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            viewed
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: modeData
                            .map((e) => Column(
                                  children: [
                                    Text(
                                      e[0],
                                      style: TextStyle(
                                          color: Color(
                                              online ? 0xff31aab7 : 0xffd8d8d8),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 34,
                                    ),
                                    Image.asset(online
                                        ? 'images/${e[1]}.png'
                                        : 'images/${e[1]}_off.png'),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      e[2],
                                      style: TextStyle(
                                          color: Color(
                                              online ? 0xff282f39 : 0xffd8d8d8),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ],
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const ViewSummary())),
                        child: const Text(
                          'View Summary',
                          style: TextStyle(
                              color: Color(0xff282f39),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                : const SizedBox(
                    height: 0,
                  )
          ],
        ),
      );
}
