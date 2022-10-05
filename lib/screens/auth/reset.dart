import 'package:flutter/material.dart';
import 'package:kaira/screens/auth/new_password.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 87.31),
          child: ListView(
            children: [
              Image.asset(
                'images/Frame.png',
                height: 61.75,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 38.05),
                child: Text(
                  'Reset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Please enter your number. We will send '
                      'a code to your phone to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF78789D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0XFFEAEAFF)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            // height: 50.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 23.0, bottom: 7),
                                  child: Text(
                                    'Phone number',
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF1F1F39)),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.centerStart,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Image.asset(
                                        'images/phone.png',
                                        height: 20.1,
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 40.0, top: 14),
                                          hintText: '+234 84 878 798',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0XFF38385E))),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.91, bottom: 25),
                          child: Row(
                            children: const [
                              Text(
                                'Forget your password?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0XFF17B7BD)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NewPassword())),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0XFF17B7BD)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)))),
                              child: const Text(
                                'Send my code',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
