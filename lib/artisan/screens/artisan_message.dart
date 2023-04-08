import 'package:flutter/material.dart';



class ArtisanMessage extends StatefulWidget {
  const ArtisanMessage({Key? key}) : super(key: key);

  @override
  State<ArtisanMessage> createState() => _ArtisanMessageState();
}

class _ArtisanMessageState extends State<ArtisanMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff31aab7),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new, size: 15,),
        ),
        title: const Text('Message'),
        centerTitle: true,
        actions: const [Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(Icons.more_vert_outlined),
        )],
        elevation: 0.0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 22),
              child: Column(
                children: [
                  const Text('12/12/2020 at 5:03 PM', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color(0xff0b754e)
                  ),),
                  const SizedBox(height: 10,),
                  leftMessage('Hello, are you nearby?'),
                  const SizedBox(height: 10,),
                  rightMessage('I\'ll be there in a few mins'),
                  const SizedBox(height: 10,),
                  leftMessage('OK, I am waiting at\nVinmark Store'),
                  const SizedBox(height: 20,),
                  const Text('12/5/2020 at 5:33 PM', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff0b754e)
                  ),),
                  const SizedBox(height: 10,),
                  rightMessage('Sorry, i\'m stuck in traffic.\nPlease give me a moment.')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              height: 105,
              decoration: const BoxDecoration(
                color: Color(0xffeef0f2),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12))
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * .6,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: const Color(0xff31aab7)),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text('Type a message...', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xffbec2ce)
                          ),),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff31aab7),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Icon(Icons.send_rounded, color: Colors.white,),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget leftMessage(String text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 190,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xffeef0f2).withOpacity(0.95),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12), bottomRight: Radius.circular(12), bottomLeft: Radius.circular(2),)
          ),
          child: Text(text, style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff282f39),
            fontSize: 15
          ),)
        ),
      ),
    );
  }

  Widget rightMessage(String text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: 200,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color(0xff31aab7).withOpacity(0.95),
                borderRadius: const BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12), bottomRight: Radius.circular(2), bottomLeft: Radius.circular(12),)
            ),
            child: Text(text, style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff),
                fontSize: 15
            ),)
        ),
      ),
    );
  }
}
