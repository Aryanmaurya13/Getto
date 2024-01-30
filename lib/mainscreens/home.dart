import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/accounts.dart';
import 'package:getto/mainscreens/cart.dart';
import 'package:getto/mainscreens/categories.dart';
import 'package:getto/mainscreens/front.dart';
import 'package:getto/mainscreens/offers.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class homes extends StatefulWidget {
  const homes({super.key});

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  int pp = 0;
  List<Widget> _buildScreens() {
    return [
      frontpage(),
      categories(),
      offers(),
      cart(),
      account(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    print(_controller.index);
    return [
      PersistentBottomNavBarItem(
        contentPadding: 0,

        icon: Padding(

          padding: const EdgeInsets.all(0.0),
          child: (pp == 0)?Image.asset('assets/bottom/homec.png' , height: 40,):Image.asset('assets/bottom/Home.png'),
        ),
        title: "Home",
       // textStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //textStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),
        icon: Padding(
          padding: const EdgeInsets.all(0.0),
          child: (pp == 1)?Image.asset('assets/bottom/Categoryc.png'):Image.asset('assets/bottom/Category.png'),
        ),
        title: "Categories",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
       // textStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),
        icon: Padding(
          padding: const EdgeInsets.all(0.0),
          child: (pp == 2)?Image.asset('assets/bottom/Discountc.png'):Image.asset('assets/bottom/Discount.png'),
        ),
        title: "Offers",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //textStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),
        icon: Padding(
          padding: const EdgeInsets.all(2.0),
          child: (pp ==3)?Image.asset('assets/bottom/Buyc.png'):Image.asset('assets/bottom/Buy.png'),
        ),
        title: "Cart",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //textStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),
        icon: Padding(
          padding: const EdgeInsets.all(2.0),
          child: (pp == 4)?Image.asset('assets/bottom/Vector.png'):Image.asset('assets/bottom/Profile.png'),
        ),
        title: "Account",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }



  @override
  Widget build(BuildContext context) {


    return PersistentTabView(

      context,
      controller: _controller,
      onItemSelected: (_c){
        setState(() {
          pp = _controller.index;
        });

      },
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
      // Choose the nav bar style with this property.
    );

  }
}
