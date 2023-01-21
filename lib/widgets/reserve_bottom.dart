import 'package:flutter/material.dart';

class ReserveBottom extends StatelessWidget {
  const ReserveBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 0),
      height: 70,
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "₹ 2,00,00,000",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff46D2DB),
            ),
            width: 200,
            child: const Text(
              "Reserve Now",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
