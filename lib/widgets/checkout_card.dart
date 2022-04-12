import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

import '../models/cart_model.dart';

class CheckoutCard extends StatelessWidget {

    final CartModel? cart;


  const CheckoutCard({
    this.cart,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              cart!.product!.galleries![0].url!,
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart!.product!.name!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${cart!.product!.price}',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '${cart!.quantity} Items',
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
