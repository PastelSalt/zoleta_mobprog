import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoleta_mobprog/constant.dart';
import 'package:zoleta_mobprog/screens/newsfeed_screen.dart';
import 'package:zoleta_mobprog/screens/notifications_screen.dart';
import 'package:zoleta_mobprog/widget/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<String> _titles = [
    'Zoleta Social',
    'Friends',
    'Notifications',
    'Menu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _titles[_selectedIndex],
          fontSize: ScreenUtil().setSp(22),
          color: fbPrimary,
          fontFamily: 'FredokaBold',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          const NewsfeedScreen(),
          Center(
            child: CustomText(
              text: 'Friends Screen',
              fontSize: ScreenUtil().setSp(18),
              color: fbDarkPrimary,
              fontFamily: 'FredokaSemiCondensed',
            ),
          ),
          const NotificationsScreen(),
          Center(
            child: CustomText(
              text: 'Menu Screen',
              fontSize: ScreenUtil().setSp(18),
              color: fbDarkPrimary,
              fontFamily: 'FredokaSemiCondensed',
            ),
          ),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        selectedItemColor: fbPrimary,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
