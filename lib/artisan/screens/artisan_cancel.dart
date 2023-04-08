import 'package:flutter/material.dart';

class ArtisanCancel extends StatefulWidget {
  const ArtisanCancel({Key? key}) : super(key: key);

  @override
  State<ArtisanCancel> createState() => _ArtisanCancelState();
}

class _ArtisanCancelState extends State<ArtisanCancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, color: Color(0xff242a37))),
        title: const Text(
          'Cancellation Reason',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xff242a37)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: data.map((e) => cancel(e)).toList(),
            ),
            SizedBox(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff31aab7)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Text('DONE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final data = [
    'Long to respond',
    'Profile didn\'t match description',
    'Client asked to cancel',
    'Accidental request',
    'Other reasons'
  ];

  Widget cancel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          text.contains('Other')
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              : Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      border: Border.all(color: const Color(0xffc4c4c4))),
                )
        ],
      ),
    );
  }
}
