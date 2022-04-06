import 'package:flutter/material.dart';
import 'package:shamo_flutter/pages/home/chat_page.dart';
import 'package:shamo_flutter/pages/home/home_page.dart';
import 'package:shamo_flutter/pages/home/profile_page.dart';
import 'package:shamo_flutter/pages/home/wishlist_page.dart';
import 'package:shamo_flutter/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      backgroundColor: secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: bgColor4,
          type: BottomNavigationBarType.fixed,
          // currentIndex: currentIndex,
          onTap: (value) {
            // print(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset('assets/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : greyColor),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, right: 45),
                child: Image.asset('assets/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : greyColor),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, left: 45),
                child: Image.asset('assets/icon_wishlist.png',
                    width: 20,
                    color: currentIndex == 2 ? primaryColor : greyColor),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset('assets/icon_profile.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : greyColor),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishlistPage();
        break;
      default:
        return ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? bgColor1 : bgColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: SafeArea(
        child: body(),
      ),
    );
  }
}
