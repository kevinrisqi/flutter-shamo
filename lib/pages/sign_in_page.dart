import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: 70,
              ),
              body()
            ],
          ),
        ),
      ),
    );
  }
}

class body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Email Address',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}

class header extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Continue',
            style: subtitleTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
