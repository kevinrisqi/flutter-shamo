import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffECEDEF),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 30,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image_popular1.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Hiking',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'COURT VISION 2.0',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$58,78',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
