import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Checkout Detail',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Items',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CheckoutCard(),
              CheckoutCard(),
              detailAddress(),
              summaryPayment(),
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
              checkoutButton(),
            ],
          )
        ],
      ),
    );
  }
}

class checkoutButton extends StatelessWidget {
  const checkoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/checkout-success', (route) => false);
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Checkout Now',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class summaryPayment extends StatelessWidget {
  const summaryPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Quantity',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                '2 Items',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Price',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                '\$72,33',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                'Free',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 0.3,
            color: subtitleColor,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '\$144,66',
                style: priceTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class detailAddress extends StatelessWidget {
  const detailAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Adrress Details',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/button_store_location.png',
                    width: 45,
                  ),
                  Image.asset(
                    'assets/image_line.png',
                    height: 45,
                  ),
                  Image.asset(
                    'assets/button_my_location.png',
                    width: 45,
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Store Location',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Adidas Core',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Your Address',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Marsemmon',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
