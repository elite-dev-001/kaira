import 'package:flutter/material.dart';



class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isObscure = true;
  bool isObscure2 = true;
  bool isObscure3 = true;

  void toggleEye() => setState(() => isObscure = !isObscure);

  void toggleEye2() => setState(() => isObscure2 = !isObscure2);

  void toggleEye3() => setState(() => isObscure3 = !isObscure3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff6e6be8).withOpacity(0.15),
                    offset: const Offset(0, 2),
                    blurRadius: 15,
                    spreadRadius: 0.0)
              ],
              // border: Border.all(),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 46,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      child: const Text('Save'),
                    ),
                  ),
                ],
              )),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(196),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 32, top: 85),
              decoration: const BoxDecoration(
                  color: Color(0xff31aab7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 74.0),
                        child: Text(
                          'Your profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: 150, left: 120, child: myCamera()),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            const SizedBox(height: 60,),
            Column(
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
                                  hintText: 'Tochukwu Alor',
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
                                  hintText: '+84 878 798',
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
                          EdgeInsets.only(top: 23.0, bottom: 7),
                          child: Text(
                            'Email',
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
                                'images/mail.png',
                                height: 20.1,
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 40.0, top: 14),
                                  hintText: 'Your email here',
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
                          EdgeInsets.only(top: 25.91, bottom: 7),
                          child: Text(
                            'Change Password',
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
                                  hintText: 'your current password here'),
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
                            'New password',
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
                                  hintText: '***************'),
                              keyboardType:
                              TextInputType.visiblePassword,
                              obscureText: isObscure2,
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
                            'Retype your new password',
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
                                    onPressed: () => toggleEye3(),
                                    icon: isObscure3
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
                              obscureText: isObscure3,
                              obscuringCharacter: '*',
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 35.91,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget myCamera() {
    return Container(
      height: 135,
      width: 135,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xffeaeaff)),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4.28125),
          topRight: Radius.circular(64.2188),
          bottomRight: Radius.circular(64.2188),
          bottomLeft: Radius.circular(64.2188),
        )
      ),
      child: Image.asset('images/camera.png'),
    );
  }
}
