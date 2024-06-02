import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/painters/dotted_circle_painter.dart';
import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with TickerProviderStateMixin {
  bool accountExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20, width: double.infinity),
                const Text(
                  'My Account',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40, width: double.infinity),
                CustomPaint(
                  painter: DottedCirclePainter(color: primaryColor, length: 80),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[300]),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    const Text(
                      'John Smith',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'info@johnsmith.com',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [boxShadowOne],
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() => accountExpanded = !accountExpanded);
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const AppSvgIcon(SvgIcons.person),
                                  const SizedBox(width: 20),
                                  const Text(
                                    'Account',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: iconColor.withOpacity(.6),
                                  ),
                                ],
                              ),
                            ),
                            // animated switch
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: accountExpanded ? 560 : 0,
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildInput(
                                      title: 'Email',
                                      hint: 'yourmail@xmail.com',
                                    ),
                                    const SizedBox(height: 20),
                                    _buildInput(
                                      title: 'Full Name',
                                      hint: 'John Smith',
                                    ),
                                    const SizedBox(height: 20),
                                    _buildInput(
                                      title: 'Street Address',
                                      hint: '123 Main St',
                                    ),
                                    const SizedBox(height: 20),
                                    _buildInput(
                                      title: 'Apt, Suite, Bldg (optional)',
                                      hint: 'Unit 512',
                                    ),
                                    const SizedBox(height: 20),
                                    _buildInput(
                                      title: 'Zip Code',
                                      hint: '12345',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildOption(
                        svg: SvgIcons.lock,
                        title: 'Passwords',
                      ),
                      _buildOption(
                        title: 'Notification',
                        svg: SvgIcons.notification,
                      ),
                      _buildOption(
                        svg: SvgIcons.favorite,
                        title: 'Wishlist',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildOption({
    required String title,
    required String svg,
  }) {
    return Column(
      children: [
        Divider(
          height: 30,
          color: Colors.grey.shade300,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AppSvgIcon(svg),
              const SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: iconColor.withOpacity(.6),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildInput({
    required String title,
    required String hint,
    TextEditingController? controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 12),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
