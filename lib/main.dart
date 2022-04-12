import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/pages/cart_page.dart';
import 'package:shamo_flutter/pages/checkout_page.dart';
import 'package:shamo_flutter/pages/checkout_success_page.dart';
import 'package:shamo_flutter/pages/detail_chat_page.dart';
import 'package:shamo_flutter/pages/edit_profile_page.dart';
import 'package:shamo_flutter/pages/home/main_page.dart';
import 'package:shamo_flutter/pages/product_page.dart';
import 'package:shamo_flutter/pages/sign_in_page.dart';
import 'package:shamo_flutter/pages/sign_up_page.dart';
import 'package:shamo_flutter/pages/splash_page.dart';
import 'package:shamo_flutter/providers/auth_provider.dart';
import 'package:shamo_flutter/providers/product_provider.dart';
import 'package:shamo_flutter/providers/wishlist_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
