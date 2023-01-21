import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailUpdated extends StatelessWidget {
  const DetailUpdated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Container(
            padding: const EdgeInsets.only(top: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Special Housing Mix",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    "Delhi, India",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xff46D2DB),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "20",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.comment,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "1",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
        const Positioned(
            top: -15,
            right: 23,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            )),
      ],
    );
  }
}
