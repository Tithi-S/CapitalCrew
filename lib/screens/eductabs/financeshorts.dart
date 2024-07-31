// vertical_pages_widget.dart
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalPagesWidget extends StatelessWidget {
  const VerticalPagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      " ",
      " ",
      " ",
      " "
    ];

    final List<String> imageList = [
      "assets/images/t1.jpg",
      "assets/images/t2.jpg",
      "assets/images/t3.jpg",
      "assets/images/t4.jpg",
    ];

    List<Widget> images = imageList.map((image) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.black45,
            image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: AssetImage(image)),
            borderRadius: BorderRadius.circular(10)),
      );
    }).toList();

    return SafeArea(
      child: VerticalCardPager(
          titles: titles,
          images: images,
          textStyle: TextStyle(fontSize: 14, color: Colors.white)),
    );
  }
}
