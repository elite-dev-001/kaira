import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/bank_details.dart';

class CompleteRegistration extends StatefulWidget {
  const CompleteRegistration({Key? key}) : super(key: key);

  @override
  State<CompleteRegistration> createState() => _CompleteRegistrationState();
}

class _CompleteRegistrationState extends State<CompleteRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
          color: Color(0xff959595),
        ),
        title: const Text(
          'Complete Registration',
          style: TextStyle(
            color: Color(0xff242a37),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
        child: Column(
          children: data
              .map((e) => details(e['icon'] as IconData, e['text'].toString()))
              .toList(),
        ),
      ),
    );
  }

  final data = [
    {"icon": Icons.credit_card, "text": "Add Bank details"},
    {"icon": Icons.people_alt, "text": "Personal Documents"},
    {"icon": Icons.card_giftcard, "text": "Licences Documents"},
  ];

  Widget details(IconData icon, String text) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (builder) => const BankDetails())),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: const Color(0xff959595),
                ),
                const SizedBox(
                  width: 17,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff959595)),
                  ),
                )
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Color(0xff959595),
            )
          ],
        ),
      ),
    );
  }
}
