import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/models/product_model.dart';
import 'package:shamo_flutter/providers/wishlist_provider.dart';
import 'package:shamo_flutter/theme.dart';

class WishlistCard extends StatelessWidget {
  final ProductModel? product;

  const WishlistCard({this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: bgColor4),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product!.galleries![0].url!,
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
                  product!.name!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$${product!.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product!);
            },
            child: Image.asset(
              'assets/button_wishlist.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
