import 'package:event_ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'home.dart';



class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0; //New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget?> _pages = <Widget?>[
    HomeScreen(),
  Container(),
    Container(),
     Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 120,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/svg/home-2.svg',color: _selectedIndex==0?AppColors.primaryColor:Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/svg/Search.svg',color: _selectedIndex==1?AppColors.primaryColor:Colors.grey,),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/heart.svg',color: _selectedIndex==2?AppColors.primaryColor:Colors.grey,),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/svg/ticket.svg',color: _selectedIndex==3?AppColors.primaryColor:Colors.grey),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/profile-circle.svg',color: _selectedIndex==4?AppColors.primaryColor:Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


