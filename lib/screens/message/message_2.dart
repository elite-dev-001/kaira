import 'package:flutter/material.dart';
import 'package:kaira/screens/message/app_call.dart';

class MessageTwo extends StatefulWidget {
  const MessageTwo({Key? key}) : super(key: key);

  @override
  State<MessageTwo> createState() => _MessageTwoState();
}

class _MessageTwoState extends State<MessageTwo> {
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
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Your message here',
                    suffixIcon: SizedBox(
                      width: MediaQuery.of(context).size.width * .2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xff31aab7),
                          ),
                          // SizedBox(width: 10.4,),
                          Icon(
                            Icons.send_rounded,
                            color: Color(0xff31aab7),
                          )
                        ],
                      ),
                    )),
              )),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 80,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 30, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xff31aab7))),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff31aab7),
                      size: 13,
                    ),
                  ),
                ),
                Row(
                  children: [
                    profilePic(),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Janet Anderson',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff242a37)),
                    )
                  ],
                ),
                Row(
                  children:  [
                    IconButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => const AppCall())),
                      icon: const Icon(Icons.phone),
                      color: const Color(0xff31aab7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xff31aab7),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 30),
        child: ListView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                chats(
                    'I receive your booking. I will arrive'
                        ' in 3 minutes, please wait for me',
                    true),
                chats('Ok sure!', false),
                chats('Is it easy', false),
                chats('Yes it is. Do you have any special requirement?', true),
                chats('No. Thanks. Please come soon', false),
                chats('Ok sure', true)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget profilePic() {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5),
      width: 28.27,
      height: 27,
      decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage('images/pro.png')),
          color: const Color(0xffffebf0),
          border: Border.all(color: const Color(0xffeaeaff)),
          borderRadius: const BorderRadius.only(
              // topLeft: Radius.circular(2),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
    );
  }

  Widget chats(String text, bool position) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: position ? MainAxisAlignment.start : MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: Align(
              alignment: position ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                // width: MediaQuery.of(context).size.width * .6,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xfff4f3fd),
                    borderRadius: BorderRadius.only(
                        topLeft: position ? Radius.circular(2) : Radius.circular(25),
                        topRight: position ? Radius.circular(25) : Radius.circular(2),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff38385e),
                    fontSize: 14,
                    height: 1.5
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 18.0),
          //   child: Text(time),
          // )
        ],
      ),
    );
  }
}
