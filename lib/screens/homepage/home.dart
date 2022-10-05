import'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void close() => Navigator.pop(context);

  void callModal() => showDialog(context: context, builder: (context) => AlertDialog(
    actions: [
      IconButton(
          onPressed: (){},
          icon: const Icon(Icons.close)
      )
    ],
    actionsAlignment: MainAxisAlignment.end,
    title: const Text('Hello Tochukwu, do you want to know more about our services?'),
    content: Column(
      children: [
        const Text('Lorem ipsum dolor sit amet, consectetur '
            'adipiscing elit. Tellus tortor fringilla arcu '
            'nullam id viverra pellentesque adipiscing. '
            'Curabitur augue lacus, tristique commodo quis '
            'nunc tortor et. uare'),
        Image.asset('images/workers.png')
      ],
    ),
  ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callModal();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
