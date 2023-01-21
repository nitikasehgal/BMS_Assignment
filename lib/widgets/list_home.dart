import 'package:bms_project/widgets/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListHome extends StatelessWidget {
  const ListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            "https://www.re-thinkingthefuture.com/wp-content/uploads/2020/04/a744-interior-designers-in-kolkata-Grihakon-Interior.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
            top: 170, bottom: 0, right: 0, left: 0, child: detail())
      ]),
    );
  }
}
