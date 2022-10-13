import 'package:flutter/material.dart';


class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Help', style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
        child: ListView(
          children: helpData.map((e) => helps(e)).toList(),
        ),
      ),
    );
  }

  final helpData = [
    'How does Kaira work?',
    'How do i change my account Email?',
    'Can i change my plan later?',
    'Is there a free trail available?',
  ];

  Widget helps(String text) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xfff3f3f3)))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0),
            child: Text(text, style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),),
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
