import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_button.dart';
import 'package:flutter/material.dart';

import '../core/gen/assets.gen.dart';
import 'components/app_input_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60, width: double.infinity),
              _buildImageField(),
              const SizedBox(height: 45),
              // --
              _buildNameField(),
              const SizedBox(height: 20),
              // --
              _buildEmailField(),
              const SizedBox(height: 20),
              // --
              _buildPasswordField(),
              const SizedBox(height: 16),
              // --
              _buildConfirmPasswordField(),
              const SizedBox(height: 40),
              _buildSignUpButton(),
              const SizedBox(height: 40),
              _buildSocialLoginRow(),
              const SizedBox(height: 40),
              _buildAlreadyHaveAnAccount()
            ],
          ),
        ),
      ),
    );
  }

  Stack _buildImageField() {
    return Stack(
      children: [
        Material(
          elevation: 6,
          shadowColor: shadowOneColor,
          borderRadius: BorderRadius.circular(60),
          child: const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            child: AppSvgIcon(
              SvgIcons.person,
              size: 34,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: gradientOne,
            ),
            child: const Center(
              child: AppSvgIcon(
                SvgIcons.camera,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildAlreadyHaveAnAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: const Row(
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(color: iconColor, fontSize: 14),
              ),
              Text(
                'Sign In',
                style: TextStyle(color: primaryColor, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AppButton _buildSignUpButton() {
    return AppButton(
      title: "Sign Up",
      onPressed: () {},
    );
  }

  AppInputField _buildPasswordField() {
    return const AppInputField(
      hintText: 'Password',
      prefixIcon: AppSvgIcon(SvgIcons.lock),
    );
  }

  AppInputField _buildConfirmPasswordField() {
    return const AppInputField(
      hintText: 'Password',
      prefixIcon: AppSvgIcon(SvgIcons.lock),
    );
  }

  AppInputField _buildNameField() {
    return const AppInputField(
      hintText: 'Name',
      prefixIcon: AppSvgIcon(SvgIcons.person),
    );
  }

  AppInputField _buildEmailField() {
    return const AppInputField(
      hintText: 'Email',
      prefixIcon: AppSvgIcon(SvgIcons.email),
    );
  }

  Row _buildSocialLoginRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _facebookLoginButton(),
        const SizedBox(
          width: 14,
        ),
        _googleLoginButton()
      ],
    );
  }

  Card _googleLoginButton() {
    return Card(
      elevation: 6,
      shadowColor: shadowOneColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Container(
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Assets.images.googleLogo.image(scale: 2),
      ),
    );
  }

  Card _facebookLoginButton() {
    return Card(
      elevation: 6,
      shadowColor: shadowOneColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Container(
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Assets.images.facebookLogo.image(scale: 2),
      ),
    );
  }
}
