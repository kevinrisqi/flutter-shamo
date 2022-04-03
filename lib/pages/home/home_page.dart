import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
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
        )
      ],
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Alex',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '@alexkeinn',
                style: subtitleTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_avatar.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
