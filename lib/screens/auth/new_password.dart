import 'package:flutter/material.dart';




class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isObscure = true;
  bool isObscure2 = true;

  void toggleEye() => setState(() => isObscure = !isObscure);
  void toggleEye2() => setState(() => isObscure2 = !isObscure2);
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
                  'Create new password',
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
                      'Please set a new and strong password',
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
                                          hintText: 'Confirm password'),
                                      keyboardType:
                                      TextInputType.visiblePassword,
                                      obscureText: isObscure2,
                                      obscuringCharacter: '*',
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        const SizedBox(height: 25.91,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0XFF17B7BD)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(14)))),
                              child: const Text(
                                'Confirm',
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
