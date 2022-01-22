import 'package:admin_app/screen/categories_page.dart';
import 'package:admin_app/screen/home.dart';
import 'package:admin_app/screen/orders_page.dart';
import 'package:admin_app/screen/products_page.dart';
import 'package:admin_app/screen/profile_page.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=4;

  List pages=[HomePage(),Categories(), ProductsPage(),OrderPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value){
            setState(() {
              currentIndex=value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.animation),label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Products"),
            BottomNavigationBarItem(icon: Icon(Icons.storage),label: "Orders"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.black),
          ],
        ),
    );
  }
}
