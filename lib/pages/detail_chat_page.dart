import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: PreferredSize(
        child: header(),
        preferredSize: Size.fromHeight(70),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          ChatBubble(
            text: 'Hi, This item is still available?',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text: 'Good night, This item is only available in size 42 and 43',
            isSender: false,
            hasProduct: false,
          ),
          ChatBubble(
            text: 'Owww, it suits me very well',
            isSender: true,
            hasProduct: false,
          ),
        ],
      ),
      bottomNavigationBar: inputChat(),
    );
  }
}

class inputChat extends StatelessWidget {
  const inputChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 225,
            height: 75,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bgColor5,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: primaryColor),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_new_arrival3.png',
                    width: 54,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Court Vision 2.0',
                        style: primaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '\t28,73',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/button_close.png',
                  width: 22,
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: productPreview(),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/button_send.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class productPreview extends StatelessWidget {
  const productPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration.collapsed(
              hintText: 'Type Message...', hintStyle: subtitleTextStyle),
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
      centerTitle: false,
      title: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
