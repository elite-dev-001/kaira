import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/my_alert.dart';

class ArtisanSignUp extends StatefulWidget {
  const ArtisanSignUp({Key? key}) : super(key: key);

  @override
  State<ArtisanSignUp> createState() => _ArtisanSignUpState();
}

class _ArtisanSignUpState extends State<ArtisanSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          // size: 30,
          color: Color(0xff959595),
        ),
        title: const Text(
          'Create profile',
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
        padding: const EdgeInsets.all(21.0),
        child: ListView(
          children: [
            Column(
              children: data
                  .map((e) => myForm(
                      text: e['text'].toString(),
                      hintText: e['hintText'].toString(),
                      num: e['num'] as bool?))
                  .toList(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'By continuing, I confirm that I '
                'have read & agree to the Terms & conditions',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff7f7f7f)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const MyAlert(
                                title: 'Confirm',
                                subtitle:
                                    'We will send verification code to\n+91 98765 43210',
                                text1: 'CANCEL',
                                text2: 'SEND OTP',
                              ))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff31aab7)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                  child: const Text(
                    'Create Profile',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  final data = [
    {"text": 'Enter your First Name', "hintText": ''},
    {"text": 'Enter your Last Name', "hintText": ''},
    {"text": 'Enter your mobile number', "hintText": '1234 5678', "num": true},
    {"text": 'Home Address', "hintText": '1 Ash Park, Pembroke Dock, SA7254'},
    {
      "text": 'Shop/Office Address',
      "hintText": '1 Ash Park, Pembroke Dock, SA7254'
    },
    {"text": 'Password', "hintText": 'YT1234'},
  ];

  Widget myForm({required String text, required String hintText, bool? num}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Color(0xff959595),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 43,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffbdbdbd)),
                borderRadius: BorderRadius.circular(11.5)),
            child: Align(
              alignment: Alignment.center,
              child: num == null
                  ? TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          hintText: hintText,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff282f39)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 23, vertical: 12)),
                    )
                  : TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          hintText: 'hintText',
                          prefixIcon: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Image.asset('images/flag.png'),
                              ),
                              const Icon(Icons.keyboard_arrow_down),
                              const Text('+234'),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 24,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: const Color(0xffbdbdbd))),
                              )
                            ],
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff282f39)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 23, vertical: 12)),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
