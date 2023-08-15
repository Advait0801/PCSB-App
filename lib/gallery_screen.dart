import 'package:flutter/material.dart';
import 'package:pcsb_app/constants.dart';

import 'images_lists.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});
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
            fontSize: MediaQuery.sizeOf(context).width * 0.05,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Text(
                "XENIA",
                style: TextStyle(
                    color: kBlueShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SliderWidget(
                listname: slider1_images,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Text(
                "TEAM",
                style: TextStyle(
                    color: kBlueShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SliderWidget(
                listname: slider2_images,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Text(
                "SIGs",
                style: TextStyle(
                    color: kBlueShade,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SliderWidget(listname: slider3_images)
            ],
          ),
        ),
      ),
    );
  }
}
