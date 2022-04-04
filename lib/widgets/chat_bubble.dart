import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_flutter/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  const ChatBubble({
    required this.text,
    required this.isSender,
    required this.hasProduct,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview(isSender: isSender) : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isSender ? bgColor5 : bgColor4,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
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
    required this.isSender,
  }) : super(key: key);

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 231,
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSender ? bgColor5 : bgColor4,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSender ? 12 : 0),
          topRight: Radius.circular(isSender ? 0 : 12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/image_new_arrival3.png',
                  width: 70,
                  height: 70,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURT VISION 2.0 SHOES',
                      style: primaryTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '\$57,78',
                      style: priceTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Add to Cart',
                  style: purpleTextStyle,
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: GoogleFonts.poppins(
                    color: bgColor5,
                    fontWeight: medium,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
