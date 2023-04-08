import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Personal Details',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all()),
            height: MediaQuery.of(context).size.height * .2,
            // width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/adam.png'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 57,
                    left: 57,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff1097a3),
                        border: Border.all(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 16,),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
