import 'package:assignment_flutter_developer_wedevs/pages/prfile_page.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_bottom_bar.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_floating_action_button.dart';
import 'package:assignment_flutter_developer_wedevs/pages/product_list_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const ProductListPage(),
    const Center(child: Text('Nothing to show here')),
    const Center(child: Text('Nothing to show here')),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AppFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[currentIndex],
      bottomNavigationBar: AppBottomBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        index: currentIndex,
      ),
    );
  }
}
