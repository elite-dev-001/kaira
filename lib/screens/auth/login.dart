import 'package:flutter/material.dart';
import 'package:kaira/screens/auth/reset.dart';
import 'package:kaira/screens/auth/sign_up.dart';
import 'package:kaira/screens/homepage/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscure = true;

  void toggleEye() => setState(() => isObscure = !isObscure);

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
                'images/logo_icon.png',
                height: 61,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome back!',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF78789D),
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF78789D),
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp())),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF17B7BD),
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    )
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
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.91, bottom: 25),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResetPassword())),
                                child: const Text(
                                  'Forget your password?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color(0XFF17B7BD)),
                                ),
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
                                      builder: (builder) => const Home())),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0XFF17B7BD)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)))),
                              child: const Text(
                                'Log in',
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
