import 'package:flutter/material.dart';
import 'package:kaira/artisan/screens/accept_job.dart';

class ViewDetails extends StatefulWidget {
  const ViewDetails({Key? key}) : super(key: key);

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.close, color: Color(0xff242a37)),
        title: const Text(
          'Details of Fault',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xff242a37)),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, '
                    'consectetur adipiscing\nelit. Felis platea '
                    'vulputate morbi viverra\nconsectetur justo in.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Client Details',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('images/client.png'),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Tochukwu Alor'),
                        Text('1 Ash Park, Pembroke Dock, SA72,'),
                        Text('Drury Lane, Oldham, OL9 7PH'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 25),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffdddddd))),
              // borderRadius: BorderRadius.vertical(top: Radius.circular(12))
            ),
            child: Column(
              children: [
                const Divider(),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const AcceptJob())),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff31aab7)),
                      ),
                      child: const Text('Accept'),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffeef0f2)),
                      ),
                      child: const Text(
                        'Decline',
                        style: TextStyle(color: Color(0xff31aab7)),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
