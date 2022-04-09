import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/models/user_model.dart';
import 'package:shamo_flutter/providers/auth_provider.dart';
import 'package:shamo_flutter/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.check,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class content extends StatelessWidget {
  const content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '${user.name}',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '${user.email}',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  user.profilePhotoUrl.toString(),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          nameInput(),
          usernameInput(),
          emailInput(),
        ],
      ),
    );
  }
}
