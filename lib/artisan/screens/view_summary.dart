import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/view_details.dart';

class ViewSummary extends StatefulWidget {
  const ViewSummary({Key? key}) : super(key: key);

  @override
  State<ViewSummary> createState() => _ViewSummaryState();
}

class _ViewSummaryState extends State<ViewSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/artisanmap.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: const [
                  Icon(
                    Icons.close,
                    size: 18,
                  ),
                  Text('Cancel')
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 47, left: 33, right: 33, bottom: 22),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Colors.white),
              child: Column(
                children: [
                  const Text(
                    'Electrical Installation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.5),
                            color: const Color(0xff47e6b1)),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text('1 Ash Park, Pembroke Dock, SA72'),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const ViewDetails())),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                        ),
                        child: const Text('Tap to View Details'),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
