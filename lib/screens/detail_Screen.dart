import 'package:bms_project/widgets/detail.dart';
import 'package:bms_project/widgets/detail_updated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/reserve_bottom.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 23),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://www.re-thinkingthefuture.com/wp-content/uploads/2020/04/a744-interior-designers-in-kolkata-Grihakon-Interior.jpg",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Positioned(
                      top: 215,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: const DetailUpdated())),
                ],
              ),
              const SizedBox(height: 138),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.bed_outlined,
                        size: 30,
                        color: Color(0xff46D2DB),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.bathtub_outlined,
                          size: 30, color: Color(0xff46D2DB)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.home_outlined,
                          size: 30, color: Color(0xff46D2DB)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 23,
                  thickness: 0.2,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.info_outline,
                    color: Color(0xff46D2DB),
                    size: 28,
                  ),
                  Icon(
                    Icons.chat,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Icon(
                    Icons.chat_bubble,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                    size: 28,
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 20,
                  thickness: 0.2,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Text(
                  "Description",
                  style: TextStyle(fontSize: 19),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                child: Text(
                  "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet mauris. Lorem ipsum dolor sit amet, Lorem ipsum dolor sit. Nam enim massa, imperdiet ut nisi a, fermentum pulvinar tellus. Cras a est metus. Maecenas et pellentesque sem. Aenean nec elit ut neque euismod auctor quis id elit. Ut auctor ligula nec sapien aliquam, quis tempor dolor molestie.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              ReserveBottom()
            ],
          )),
    );
  }
}
