import 'package:flutter/material.dart';
import 'package:shamo_flutter/pages/detail_chat_page.dart';
import 'package:shamo_flutter/pages/edit_profile_page.dart';
import 'package:shamo_flutter/pages/home/main_page.dart';
import 'package:shamo_flutter/pages/product_page.dart';
import 'package:shamo_flutter/pages/sign_in_page.dart';
import 'package:shamo_flutter/pages/sign_up_page.dart';
import 'package:shamo_flutter/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
}
