import 'package:flutter/material.dart';

class FamiliarShoesCard extends StatelessWidget {
  final String imageUrl;

  FamiliarShoesCard({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      // margin: EdgeInsets.only(
      //   right: 16,
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
