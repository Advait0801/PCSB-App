import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pcsb_app/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  final List<Widget> listName;

  SliderWidget({required this.listName});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, top: 10.0),
          child: CarouselSlider(
            items: widget.listName,
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index,reason){
                setState(() {
                  currentIndex = index;
                });
              }
            )
          ),
        ),
        Positioned(
          bottom: 25.0,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: widget.listName.length,
              effect: WormEffect(
                dotHeight: MediaQuery.of(context).size.width*0.02,
                dotWidth: MediaQuery.of(context).size.width*0.02,
                type: WormType.thinUnderground,
                dotColor: Colors.white,
                activeDotColor: Colors.red
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imageAddress;

  ImageWidget({required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
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

List<Widget> slider1Images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI Logo.png'),

  //2nd Image of Slider
  ImageWidget(imageAddress: "images/CSI Team.png"),

  //3rd Image of Slider
  ImageWidget(imageAddress: "images/CSI team2.jpg"),
];

List<Widget> slider2Images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI Team.png'),
  //2nd Image of Slider
  ImageWidget(imageAddress: 'images/CSI team2.jpg'),

  //3rd Image of Slider
  ImageWidget(imageAddress: "images/CSI Logo.png"),
];

List<Widget> slider3Images = [
  //1st Image of Slider
  ImageWidget(imageAddress: 'images/CSI team2.jpg'),

  //2nd Image of Slider
  ImageWidget(imageAddress: "images/CSI Logo.png"),

  //3rd Image of Slider
  ImageWidget(imageAddress: 'images/CSI Team.png'),
];
