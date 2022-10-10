import 'package:flutter/material.dart';
import 'package:kaira/screens/service/confirm_booking.dart';

class PayBooking extends StatefulWidget {
  const PayBooking({Key? key}) : super(key: key);

  @override
  State<PayBooking> createState() => _PayBookingState();
}

class _PayBookingState extends State<PayBooking> {

  bool isClicked = false;

  void addCard() =>
      !isClicked ? setState(() => isClicked = true) : Navigator.push(context,
          MaterialPageRoute(builder: (builder) => const ConfirmBooking()));


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
                    onPressed: () => addCard(),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xff31aab7)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: const Text('Next'),
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
                    'Pay for booking',
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
            const Text(
              'Choose a payment method',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff38385e)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffeaeaff)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xff31aab7)),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Credit card',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff38385e)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffeaeaff)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Wallet',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff38385e)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffeaeaff)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff38385e)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            !isClicked ? Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                  width: 311,
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
                          children: [
                            switchSlider(),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Save card information',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff38385e)),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffeaeaff)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 26.0, bottom: 20),
                                child: Text(
                                  'Card holder\'s name',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff38385e)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  'Tochukwu Alor',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff38385e),
                                      height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffeaeaff)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 26.0, bottom: 20),
                                child: Text(
                                  'Card number',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff38385e)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  '1233 2343 2432 2243',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff38385e),
                                      height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffeaeaff)))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 26.0, bottom: 20),
                                    child: Text(
                                      'Valid till',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff38385e)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      '12/21',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff38385e),
                                          height: 1.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffeaeaff)))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 26.0, bottom: 20),
                                    child: Text(
                                      'CVV',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff38385e)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      '***',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff38385e),
                                          height: 1.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ])
              ),
            ) : Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 311,
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
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffeaeaff)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff31aab7)),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Tochukwu Alor\'s card',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff38385e)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 19.0, top: 15, bottom: 16),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset('images/visa.png'),
                              ),
                              const Text(
                                '1233 2345 2432 2243', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff38385e)
                              ),)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 19.0),
                          child: Text('Valid till 12/21', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff38385e)
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xfff4f3fd),
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.add_circle_outline, size: 17,
                              color: Color(0xff31aab7),),
                          ),
                          Text('Add new card', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff31aab7)
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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


  bool selected = true;

  void changeSelect() => setState(() => selected = !selected);

  Widget switchSlider() {
    return GestureDetector(
      onTap: () => changeSelect(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2.7),
        height: 16.2,
        width: 27,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.4),
            color: Color(selected ? 0xff31aab7 : 0xfff4f3fd)),
        child: Align(
          alignment: selected ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            height: 10.8,
            width: 10.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.375),
                color: Color(selected ? 0xffffffff : 0xffb8b8d2)),
          ),
        ),
      ),
    );
  }
}
