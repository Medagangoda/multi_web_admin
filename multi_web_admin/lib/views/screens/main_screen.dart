import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/dashborad_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/order_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multi_web_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectItem = DashboradScreen();

  screenSlectors(item) {
    switch (item.route) {
      case DashboradScreen.routeName:
      setState(() {
        _selectItem = DashboradScreen();
      });
      break;

      case VendorsScreen.routeName:
      setState(() {
        _selectItem = VendorsScreen();
      });
      break;

      case WithdrawalScreen.routeName:
      setState(() {
        _selectItem = WithdrawalScreen();
      });
      break;

      case OrderScreen.routeName:
      setState(() {
        _selectItem = OrderScreen();
      });
      break;

      case CategoriesScreen.routeName:
      setState(() {
        _selectItem = CategoriesScreen();
      });
      break;

      case ProductsScreen.routeName:
      setState(() {
        _selectItem = ProductsScreen();
      });
      break;

      case UploadBannerScreen.routeName:
      setState(() {
        _selectItem = UploadBannerScreen();
      });
      break;


    }
  }

  
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
            route: WithdrawalScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: CupertinoIcons.shopping_cart,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: ' Categories',
            icon: Icons.category,
            route: CategoriesScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Product',
            icon: Icons.shop,
            route: ProductsScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            icon: CupertinoIcons.add,
            route: UploadBannerScreen.routeName,
          ),
        ], selectedRoute: '',
        onSelected: (item) {
          screenSlectors(item);
        },
      ),
      body: _selectItem);
  }
}
