import 'package:bottomapp/views/fav_page.dart';
import 'package:bottomapp/views/notification_page.dart';
import 'package:bottomapp/views/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  final List<Widget>_screens=[
    const Center(child: Text('This is Home Page',style: TextStyle(fontSize: 24,color: Colors.orange),),),
    const FavPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
  final List<String> _titles=[
    'Home Page',
    'Favourites Page',
    'Notifications Page',
    'Profile Page'
  ];
  void onIconTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text(_titles[_currentIndex],
            style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          backgroundColor: Colors.amber[200],
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (index){
      setState(() {
        _currentIndex=index;
      });
      },
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.purple,
          backgroundColor: Colors.orange[500],
    unselectedItemColor: Colors.black,
    items: const[
      BottomNavigationBarItem(
    icon:Icon(Icons.home),
    label: 'Home',
      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.favorite),
        label: 'Favourites',

      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.notifications),
        label: 'Notifications',
      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.person),
        label: 'Profile',
      ),
    ],
      ),
      ),
    );
  }
}
