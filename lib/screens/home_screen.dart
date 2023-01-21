import 'package:bms_project/screens/detail_Screen.dart';
import 'package:bms_project/widgets/bars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/list_home.dart';
import '../widgets/search_bar.dart';
import '../widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8fbff),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 60,
            ),
            const TopBar(),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "Hello Sam",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Start Looking For Your House ",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 18,
            ),
            const SearchBar(),
            const SizedBox(
              height: 40,
            ),
            const Bars(),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const DetailScreen();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Card(
                        borderOnForeground: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const ListHome(),
                      ),
                    ));
              },
              itemCount: 4,
            )
          ]),
        ),
      ),
    );
  }
}
