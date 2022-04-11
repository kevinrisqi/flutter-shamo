import 'package:flutter/material.dart';
import 'package:shamo_flutter/models/product_model.dart';
import 'package:shamo_flutter/theme.dart';

class ProductCard extends StatelessWidget {
  ProductModel? product;

  ProductCard({this.product, Key? key}) : super(key: key);

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
              Image.network(
                product!.galleries![0].url.toString(),
                width: 215,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                product!.category!.name.toString(),
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                product!.name.toString(),
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$${product!.price}',
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
