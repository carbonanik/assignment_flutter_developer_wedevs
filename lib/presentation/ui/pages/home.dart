import 'package:assignment_flutter_developer_wedevs/presentation/ui/pages/prfile_page.dart';
import 'package:assignment_flutter_developer_wedevs/presentation/ui/pages/product_list_page.dart';
import 'package:flutter/material.dart';

import '../components/app_bottom_bar.dart';
import '../components/app_floating_action_button.dart';

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
      extendBody: true,
      extendBodyBehindAppBar: true,
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
