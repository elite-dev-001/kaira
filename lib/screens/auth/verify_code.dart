import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kaira/screens/auth/login.dart';

// import 'package:kaira/screens/homepage/home.dart';
// import 'package:toast/toast.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode(
      {Key? key, required this.otp, required this.phone, required this.id})
      : super(key: key);
  final String otp;
  final String phone;
  final String id;

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  String err = '';
  bool loading = false;

  void setLoading() => setState(() => loading = !loading);

  void setErr(String error) => setState(() => err = error);

  // void showOtp() =>
  //     Toast.show(widget.otp, duration: Toast.lengthLong, gravity: Toast.bottom);

  void verifyOtp() async {
    setLoading();
    final data = {"otp": widget.otp};

    Response response = await Dio().post(
        'https://kaira-api.onrender.com/api/v1/auth/verify-otp/${widget.id}',
        data: data,
        options: Options(contentType: 'application/json'));

    if (response.statusCode == 200) {
      goLogin();
      setLoading();
    } else {
      setErr('Wrong Otp verification');
      setLoading();
    }
  }

  void goLogin() => Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const Login()));

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   ToastContext().init(context);
  //   showOtp();
  // }

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
            Column(
              children: [
                const Text('Please enter the 4-digit code send to you at '),
                Text(widget.phone)
              ],
            ),
            Text(
              err,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
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
                        pinCode(widget.otp[0]),
                        pinCode(widget.otp[1]),
                        pinCode(widget.otp[2]),
                        pinCode(widget.otp[3]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // const Text('Resend code in 0:15'),
            Padding(
              padding: const EdgeInsets.only(top: 148.9, bottom: 24.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: verifyOtp,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0XFF17B7BD)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)))),
                  child: loading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
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
    );
  }

  Widget pinCode(String number) {
    return Container(
      height: 49,
      width: 49,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffbdbdbd)),
          borderRadius: BorderRadius.circular(11.5)),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
    );
  }
}
