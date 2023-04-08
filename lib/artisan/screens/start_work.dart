import 'package:flutter/material.dart';



class StartWork extends StatefulWidget {
  const StartWork({Key? key}) : super(key: key);

  @override
  State<StartWork> createState() => _StartWorkState();
}

class _StartWorkState extends State<StartWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text('COMING SOON...', style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
