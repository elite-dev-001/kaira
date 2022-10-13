import 'package:flutter/material.dart';

class WorkerReview extends StatefulWidget {
  const WorkerReview({Key? key}) : super(key: key);

  @override
  State<WorkerReview> createState() => _WorkerReviewState();
}

class _WorkerReviewState extends State<WorkerReview> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 46,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff31aab7)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      child: const Text('Send your review'),
                    ),
                  ),
                ],
              )),
        ),
      ),
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
                    'Review',
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
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  const Text(
                    'What do you think about Richard\'s work?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0xff38385e)),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 93,
                    width: 97.36,
                    decoration: const BoxDecoration(
                        color: Color(0xffffebf0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45),
                          bottomRight: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/pro.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: stars.map((e) => myReviews(e)).toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      switchSlider(),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Mark as your favorite',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff38385e)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xffe5e5e5))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Leave your comment here',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffb8b8d2)),),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                        myRadius('Careful and on time'),
                        const SizedBox(width: 10,),
                        myRadius('Good job!')
                    ],
                  ),
                  const SizedBox(height: 10,),
                  myRadius('Very Clean')
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Upload a picture',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1f126b)),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/rect6.png',),
                newPic(),
                newPic()
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text('Have a problem with our service? ', textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff1f126b)),),
                Text(' Let us know', textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff31aab7)),)
              ],
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  Widget newPic() {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffb8b8d2)),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(2),
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15)
        )
      ),
      child: const Icon(Icons.add, color: Color(0xffb8b8d2),),
    );
  }

  Widget myRadius(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xff31aab7))
      ),
      child: Text(text, style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Color(0xff31aab7)),),
    );
  }

  final stars = [true, true, true, false, false];

  Widget myReviews(bool status) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Icon(
        Icons.star,
        size: 15,
        color: Color(status ? 0xffffb457 : 0xffeaeaff),
      ),
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
