import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/providers/wishlist_provider.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          child: ListView(
            children: wishlistProvider.wishlist
                .map(
                  (product) => WishlistCard(product: product),
                )
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        wishlistProvider.wishlist.length == 0 ? emptyWishlist() : content()
      ],
    );
  }
}

class emptyWishlist extends StatelessWidget {
  const emptyWishlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_wishlist.png',
              width: 74,
              height: 62,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'You don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
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
    return AppBar(
      backgroundColor: bgColor1,
      centerTitle: true,
      title: Text('Favorite Shoes'),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
