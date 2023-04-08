import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/personal_document.dart';



class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
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
          'Bank Detail',
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
                  hintText: e['hintText'].toString(),))
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
                          builder: (builder) => const PersonalDocument())),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff31aab7)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                  child: const Text(
                    'Add',
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
    {"text": 'Bank Name', "hintText": 'Standard Chartered'},
    {"text": 'Account Number', "hintText": 'ACN0123456789'},
    {"text": 'CVV', "hintText": '3456'}
  ];

  Widget myForm({required String text, required String hintText}) {
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
              child: TextFormField(
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
            ),
          )
        ],
      ),
    );
  }
}
