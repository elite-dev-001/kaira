import 'package:flutter/material.dart';
import 'package:kaira/screens/homepage/saved_places.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: const Color(0xff959595),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 26),
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: mapArrow(),
                ),
                SizedBox(
                  // width: MediaQuery.of(context).size.width * .8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48,
                        width: 275,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.my_location,
                                color: Color(0xff959595),
                              ),
                              hintText: 'Electrician',
                              hintStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: const Color(0xfff3f3f3)),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 48,
                        width: 275,
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.mic),
                              hintText: 'Input your location',
                              hintStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: const Color(0xfff3f3f3)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => const SavedPlaces())),
              child: Container(
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xfff3f3f3)))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                              width: 20,
                              child: Icon(
                                Icons.star,
                                color: Color(0xff959595),
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Saved places',
                              style: TextStyle(
                                  color: Color(0xff49493d),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff959595),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xfff3f3f3)))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                              width: 20,
                              child: Icon(
                                Icons.location_on_rounded,
                                color: Color(0xff959595),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'San Francisco International Airport',
                                  style: TextStyle(
                                      color: Color(0xff49493d),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '348 Mc Donnell Rd, San Francisco',
                                  style: TextStyle(
                                      color: Color(0xff959595),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mapArrow() {
    return Column(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: const Color(0xff31aab7),
              borderRadius: BorderRadius.circular(6)),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 4,
              width: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2), color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const SizedBox(
          height: 4.31,
        ),
        Container(
          height: 5.75,
          width: 1,
          color: const Color(0xffececec),
        ),
        const Icon(
          Icons.location_on_rounded,
          size: 17,
          color: Color(0xff31aab7),
        )
      ],
    );
  }
}
