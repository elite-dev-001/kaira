import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {

  final ImagePicker _picker = ImagePicker();

  void takePicture() async{
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  }

  void choosePicture() async{
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc4c4c4),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,),
              child: Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                height: 239,
                child: Column(
                  children: [
                    const Icon(Icons.account_circle, color: Color(0xff31aab7), size: 97,),
                    const Text('Upload a photo', style: TextStyle(
                      color: Color(0xff7f7f7f),
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                    ),),
                    const SizedBox(height: 47,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => takePicture(),
                          child: const Text('Take a Picture', style: TextStyle(
                              color: Color(0xff31aab7),
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                        ),
                        GestureDetector(
                          onTap: () => choosePicture(),
                          child: const Text('Choose a picture', style: TextStyle(
                              color: Color(0xff31aab7),
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                        )
                      ],
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
}
