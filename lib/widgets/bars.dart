// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  const Bars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10, top: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 100, 245, 245),
          ),
          child: Column(children: [
            Container(
              width: 70,
              height: 50,
              child: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 45,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.06),
                        offset: Offset(0, 4))
                  ]),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Home",
              style: TextStyle(color: Colors.white),
            )
          ]),
        ),
        Container(
          child: Column(children: [
            Container(
              width: 70,
              height: 70,
              child: const Icon(
                Icons.location_city,
                color: Colors.grey,
                size: 40,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.06),
                        offset: Offset(0, 4))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Apartment",
              style: TextStyle(color: Colors.white),
            )
          ]),
        ),
        Container(
          child: Column(children: [
            Container(
              width: 70,
              height: 70,
              // ignore: sort_child_properties_last
              child: const Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 40,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.06),
                        offset: Offset(0, 4))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Location",
              style: TextStyle(color: Colors.white),
            )
          ]),
        ),
        Container(
          child: Column(children: [
            Container(
              width: 70,
              height: 70,
              // ignore: sort_child_properties_last
              child: const Icon(
                Icons.wechat_outlined,
                color: Colors.grey,
                size: 40,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.06),
                        offset: const Offset(0, 4))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Chat",
              style: TextStyle(color: Colors.white),
            )
          ]),
        ),
      ],
    );
  }
}
