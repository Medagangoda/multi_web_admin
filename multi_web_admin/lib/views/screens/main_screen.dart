import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/dashborad_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/vendors_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectItem = DashboradScreen();

  
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade900,
          title: Text('Management'),
        ),
        sideBar: SideBar(items: [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashboradScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: CupertinoIcons.person_3,
            route: VendorsScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            icon: CupertinoIcons.money_dollar,
            route: '/',
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: CupertinoIcons.shopping_cart,
            route: '/',
          ),
          AdminMenuItem(
            title: ' Categories',
            icon: Icons.category,
            route: '/',
          ),
          AdminMenuItem(
            title: 'Product',
            icon: Icons.shop,
            route: '/',
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            icon: CupertinoIcons.add,
            route: '/',
          ),
        ], selectedRoute: ''),
        body: _selectItem
      );
  }
}
