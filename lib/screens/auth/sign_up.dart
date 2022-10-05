import 'package:flutter/material.dart';
import 'package:kaira/screens/auth/verify_code.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObscure = true;
  bool isObscure2 = true;

  void toggleEye() => setState(() => isObscure = !isObscure);

  void toggleEye2() => setState(() => isObscure2 = !isObscure2);

  void sendOtp() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text(
              'Confirm',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                  color: Color(0XFF282F39),
                  fontStyle: FontStyle.normal),
            ),
            content: const Text(
              'We will send verification code to +91 98765 43210',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF7F7F7F),
                  fontStyle: FontStyle.normal),
            ),
            contentPadding: const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 10.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'CANCEL',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0XFF31AAB7)),
                  )),
              TextButton(
                  onPressed: () => verifyCode(),
                  child: const Text(
                    'SEND OTP',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0XFF31AAB7)),
                  )),
            ],
          ));

  void verifyCode() => Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const VerifyCode()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 27.31),
          child: ListView(
            children: [
              Image.asset(
                'images/logo_icon.png',
                height: 61,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 20, right: 20),
                child: Text(
                  'Please enter your details to sign up and create an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF78789D),
                      fontWeight: FontWeight.w400),
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
                                    'Your name',
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
                                        'images/man.png',
                                        height: 20.1,
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 40.0, top: 14),
                                          hintText: 'John Smith',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0XFF38385E))),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
                                          hintText: 'your phone number here',
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
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            // height: 50.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.91, bottom: 7),
                                  child: Text(
                                    'Password',
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
                                        'images/Frame.png',
                                        height: 20.1,
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              left: 40.0, top: 20),
                                          suffixIcon: IconButton(
                                            onPressed: () => toggleEye(),
                                            icon: isObscure
                                                ? const Icon(
                                                    Icons.visibility_outlined,
                                                    color: Color(0XFFB8B8D2),
                                                  )
                                                : const Icon(
                                                    Icons
                                                        .visibility_off_outlined,
                                                    color: Color(0XFFB8B8D2),
                                                  ),
                                          ),
                                          hintText: '***********'),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: isObscure,
                                      obscuringCharacter: '*',
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            // height: 50.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.91, bottom: 7),
                                  child: Text(
                                    'Retype your password',
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
                                        'images/Frame.png',
                                        height: 20.1,
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              left: 40.0, top: 20),
                                          suffixIcon: IconButton(
                                            onPressed: () => toggleEye2(),
                                            icon: isObscure2
                                                ? const Icon(
                                                    Icons.visibility_outlined,
                                                    color: Color(0XFFB8B8D2),
                                                  )
                                                : const Icon(
                                                    Icons
                                                        .visibility_off_outlined,
                                                    color: Color(0XFFB8B8D2),
                                                  ),
                                          ),
                                          hintText: 'Confirm Password'),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: isObscure2,
                                      obscuringCharacter: '*',
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 25.91,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => sendOtp(),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0XFF17B7BD)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)))),
                              child: const Text(
                                'Sign up',
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
