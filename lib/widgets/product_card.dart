import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColorText,
        
      ),
      child: Column(
        children: [
          Text('Hiking'),
          Text('Cout'),
          Text('984'),
        ],
      )
    );
  }
}