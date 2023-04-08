import 'package:flutter/material.dart';

class ArtisanCall extends StatefulWidget {
  const ArtisanCall({Key? key}) : super(key: key);

  @override
  State<ArtisanCall> createState() => _ArtisanCallState();
}

class _ArtisanCallState extends State<ArtisanCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Call',
          style: TextStyle(
              color: Color(0xff49493d),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff49493d),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
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
                  const SizedBox(
                    height: 160,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.mic),
                      SizedBox(
                        width: 124.74,
                      ),
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
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff31aab7)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)))),
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
