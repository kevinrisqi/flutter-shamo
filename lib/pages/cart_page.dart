import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/providers/cart_provider.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
      ),
      // body: emptyCart(),
      body: cartProvider.carts.length == 0 ? emptyCart() :  ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: cartProvider.carts
            .map(
              (cart) => CartCard(
                cart: cart,
              ),
            )
            .toList(),
      ),
      bottomNavigationBar:cartProvider.carts.length == 0 ? SizedBox() : bottomNavBar(),
    );
  }
}

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: primaryTextStyle,
              ),
              Text(
                '\$${cartProvider.totalPrice()}',
                style: priceTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 0.3,
            color: subtitleColor,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/checkout');
            },
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 5,
                left: 20,
                bottom: 5,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Continue to Checkout',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: primaryColorText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class emptyCart extends StatelessWidget {
  const emptyCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bgColor3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image_cart.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Opss! Your Cart is Empty',
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
          Container(
            width: 154,
            height: 44,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
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
    );
  }
}
