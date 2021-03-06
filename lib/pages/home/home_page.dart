import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/models/user_model.dart';
import 'package:shamo_flutter/providers/auth_provider.dart';
import 'package:shamo_flutter/providers/product_provider.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/product_card.dart';
import 'package:shamo_flutter/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalTitle(),
        newArrivals(),
      ],
    );
  }
}

class newArrivals extends StatelessWidget {
  const newArrivals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 14,
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Column(
        children: productProvider.products.map((product) => ProductTile(
          product: product,
        ),).toList(),
      ),
    );
  }
}

class popularProduct extends StatelessWidget {
  const popularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 14,
        left: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: productProvider.products
              .map(
                (product) => ProductCard(
                  product: product,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class popularProductTitle extends StatelessWidget {
  const popularProductTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}

class newArrivalTitle extends StatelessWidget {
  const newArrivalTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}

class categories extends StatelessWidget {
  const categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'BasketBall',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    UserModel user = authProvider.user;

    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, ${user.name}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@${user.username}',
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  user.profilePhotoUrl.toString(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
