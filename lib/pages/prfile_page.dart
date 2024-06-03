import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_button.dart';
import 'package:assignment_flutter_developer_wedevs/pages/dialogs/basic_success_dialog.dart';
import 'package:assignment_flutter_developer_wedevs/pages/painters/dotted_circle_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/gen/assets.gen.dart';
import '../provider/user_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  bool accountExpanded = false;

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  Future<void> _saveProfile(WidgetRef ref) async {
    final success = await ref.read(userProfileProvider.notifier).updateUser(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
        );

    if (!mounted) return;
    if (success) {
      await showDialog(
        context: context,
        builder: (context) =>
            const BasicSuccessDialog(title: 'Profile updated successfully'),
      );
    }
  }

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
                _buildProfileImage(),
                const SizedBox(height: 40),
                _buildNameEmail(),
                const SizedBox(height: 40),
                _buildSetttingsOptions(),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildSetttingsOptions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [boxShadowOne],
      ),
      child: Column(
        children: [
          _buildOption(
            svg: SvgIcons.person,
            title: 'Account',
            expanded: accountExpanded,
            first: true,
            onTap: (expanded) {
              setState(() => accountExpanded = !accountExpanded);
            },
            child: _buildAccountForm(),
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
    );
  }

  AnimatedContainer _buildAccountForm() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: accountExpanded ? 320 : 0,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            _buildInput(
              title: 'First Name',
              hint: 'John',
              controller: _firstNameController,
            ),
            const SizedBox(height: 20),
            _buildInput(
              title: 'Last Name',
              hint: 'Smith',
              controller: _lastNameController,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    title: "Cancel",
                    onPressed: () {
                      setState(() {
                        accountExpanded = false;
                      });
                    },
                    borderColor: Colors.grey.shade300,
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Consumer(builder: (context, ref, child) {
                    return AppButton(
                      title: "Save",
                      onPressed: () => _saveProfile(ref),
                      color: const Color(0xFF1ABC9C),
                    );
                  }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Consumer _buildNameEmail() {
    return Consumer(
      builder: (context, ref, child) {
        final profile = ref.watch(userProfileProvider);
        final loading = ref.watch(userLoadingProvider);

        final fullName =
            '${profile.value?.firstName ?? ''} ${profile.value?.lastName ?? ''}';
        final noName = (profile.value?.firstName == null ||
                profile.value?.firstName?.isEmpty == true) &&
            (profile.value?.lastName == null ||
                profile.value?.lastName?.isEmpty == true);

        String showText;
        if (loading) {
          showText = 'Loading...';
        } else if (noName) {
          showText = 'Your Name';
        } else {
          showText = fullName;
        }

        if (accountExpanded) {
          _firstNameController.text = profile.value?.firstName ?? '';
          _lastNameController.text = profile.value?.lastName ?? '';
        }

        return Column(
          children: [
            Text(
              showText,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              profile.value?.email ?? 'Your Email',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        );
      },
    );
  }

  CustomPaint _buildProfileImage() {
    return CustomPaint(
      painter: DottedCirclePainter(color: primaryColor, length: 80),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey[300],
        ),
        child: Assets.images.profileImageMock.image(),
      ),
    );
  }

  Widget _buildOption({
    required String title,
    required String svg,
    bool expanded = false,
    bool first = false,
    Function(bool expanded)? onTap,
    Widget? child,
  }) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap(expanded);
        }
      },
      child: Column(
        children: [
          if (!first)
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
                  style: const TextStyle(fontSize: 18),
                ),
                const Spacer(),
                Icon(
                  expanded
                      ? Icons.keyboard_arrow_down
                      : Icons.arrow_forward_ios,
                  size: 18,
                  color: iconColor.withOpacity(.6),
                ),
              ],
            ),
          ),
          if (child != null) child
        ],
      ),
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
