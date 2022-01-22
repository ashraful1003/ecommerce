import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  Information(
      {Key? key,
      required this.leading,
      required this.title,
      required this.description})
      : super(key: key);

  IconData? leading;
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 70,
          child: Icon(
            //Icons.phone,
            leading,
            color: Color(0xFF3383CD),
            size: 30,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title",
              style: TextStyle(
                color: Color(0xFF3383CD),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "$description",
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        )
      ],
    );
  }
}
