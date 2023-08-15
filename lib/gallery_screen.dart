import 'package:flutter/material.dart';
import 'package:pcsb_app/constants.dart';
import 'images_lists.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});
  static const String id = 'gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueShade,
        title: Text(
          'Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.06,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "OUR TEAM",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*0.06,
                  fontWeight: FontWeight.bold
              ),
            ),
            SliderWidget(
              listName: slider1Images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "XENIA",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*0.06,
                  fontWeight: FontWeight.bold
              ),
            ),
            SliderWidget(
              listName: slider2Images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "SIGs",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width*0.06,
                  fontWeight: FontWeight.bold),
            ),
            SliderWidget(listName: slider3Images)
          ],
        ),
      ),
    );
  }
}
