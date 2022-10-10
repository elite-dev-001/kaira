import 'package:flutter/material.dart';


class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({Key? key}) : super(key: key);

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                progress(),
                SizedBox(
                  width: 155,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xff31aab7)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: const Text('Book Now'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 30),
            child: Row(
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
                const Padding(
                  padding: EdgeInsets.only(left: 74.0),
                  child: Text(
                    'Confirm your booking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff1f126b)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 24, left: 22, bottom: 32.91, right: 22),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeaeaff)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Booking detail', style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff31aab7)
                          ),),
                          Column(
                            children: [
                              const Icon(Icons.edit_outlined, size: 15, color: Color(0xff31aab7),),
                              Container(
                                width: 13.12,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.43, color: const Color(0xff31aab7))
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      confirm('Working time', 'Monday - 22 Mar 2021\n12:30 PM'),
                      const SizedBox(height: 20,),
                      confirm('Location', 'Room 123, Brooklyn St, Kepler District'),
                      const SizedBox(height: 20,),
                      confirm('Note', 'No note added'),
                      const SizedBox(height: 20,),
                      confirm('Domestic worker', 'Janet Kim'),
                      const SizedBox(height: 20,),
                      confirm('Promotion code', 'No code added')
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 24, left: 22, bottom: 32.91, right: 22),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffeaeaff)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Payment detail', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff31aab7)
                          ),),
                          Column(
                            children: [
                              const Icon(Icons.edit_outlined, size: 15, color: Color(0xff31aab7),),
                              Container(
                                width: 13.12,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.43, color: const Color(0xff31aab7))
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      confirm('Payment method', 'Credit card'),
                      const SizedBox(height: 20,),
                      confirm('Cost', '\$12.50/1 hour')
                    ],
                  )
              ),
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }

  Widget confirm(String text1, String text2) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(text1, style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Color(0xff38385e)
            ),),
          ),
          Text(text2, style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff78789d)
          ),),
        ],
      ),
    );
  }



  Widget progress() {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xff242a37),
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 45,
          height: 0,
          decoration: BoxDecoration(
            // color: Color(0xfff3a8a2),
              border: Border.all(color: const Color(0xff363b39))),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xff242a37),
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
          width: 45,
          height: 0,
          decoration: BoxDecoration(
            // color: Color(0xfff3a8a2),
              border: Border.all(color: const Color(0xff363b39))),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: const Color(0xff363b39),
              borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
