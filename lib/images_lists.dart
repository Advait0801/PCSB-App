import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:pcsb_app/constants.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({required this.listname});
  List<Widget> listname;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
      child: CarouselSlider(
          items: listname,
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            //onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

class ImageWidget extends StatelessWidget {
  ImageWidget({required this.imageAddress});
  String imageAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      // foregroundDecoration:
      //     BoxDecoration(border: Border.all(width: 2, color: kBlueShade)),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 2, color: kBlueShade),
        image: DecorationImage(
          image: AssetImage(imageAddress),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

List<Widget> slider1_images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI Logo.png'),

  //2nd Image of Slider
  ImageWidget(imageAddress: "images/CSI Team.png"),

  //3rd Image of Slider
  ImageWidget(imageAddress: "images/CSI team2.jpg"),
];

List<Widget> slider2_images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI Team.png'),
  //2nd Image of Slider
  ImageWidget(imageAddress: 'images/CSI team2.jpg'),

  //3rd Image of Slider
  ImageWidget(imageAddress: "images/CSI Logo.png"),
];

List<Widget> slider3_images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI team2.jpg'),

  //2nd Image of Slider
  ImageWidget(imageAddress: "images/CSI Logo.png"),

  //3rd Image of Slider
  ImageWidget(imageAddress: 'images/CSI Team.png'),
];
