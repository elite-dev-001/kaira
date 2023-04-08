import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/my_alert.dart';
import 'package:kaira/screens/homepage/home.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Verify Code',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0XFF242A37),
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF959595),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(
              children: const [
                Text('Please enter the 4-digit code send to you at '),
                Text('3265 47898')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 57.03, bottom: 18.6),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        pinCode(),
                        pinCode(),
                        pinCode(),
                        pinCode(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text('Resend code in 0:15'),
            Padding(
              padding: const EdgeInsets.only(top: 148.9, bottom: 24.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const MyAlert(
                              title: 'Registration Successful',
                              subtitle:
                                  'Thank you for registering with Kiara.\nPlease'
                                      ' complete your registration '
                                      'and\nbe activated by visiting our team.',
                              text2: 'Okay'))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0XFF17B7BD)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)))),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget pinCode() {
    return Container(
      height: 49,
      width: 49,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffbdbdbd)),
          borderRadius: BorderRadius.circular(11.5)),
    );
  }
}
