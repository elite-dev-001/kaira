import'package:flutter/material.dart';



class AppCall extends StatefulWidget {
  const AppCall({Key? key}) : super(key: key);

  @override
  State<AppCall> createState() => _AppCallState();
}

class _AppCallState extends State<AppCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  children: const [
                    Icon(
                      Icons.chat_bubble_outlined,
                      color: Color(0xff31aab7),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
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
      body: Container(
        padding: const EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 217.0),
              child: Column(
                children: [
                  const Text('Calling...'),
                  const SizedBox(height: 160,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Icon(Icons.mic),
                      SizedBox(width: 124.74,),
                      Icon(Icons.volume_mute_sharp)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xff31aab7)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)
                  ))
                ),
                child: const Text('Cancel call'),
              ),
            ),
            // const SizedBox(height: 30,)
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
}
