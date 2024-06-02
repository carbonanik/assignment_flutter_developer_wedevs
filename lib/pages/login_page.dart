import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_button.dart';
import 'package:flutter/material.dart';

import '../core/gen/assets.gen.dart';
import 'components/app_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80, width: double.infinity),
              Image.asset(
                Assets.images.logoColor.path,
                width: 180,
              ),
              const SizedBox(height: 70),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              // --
              _buildEmailField(),
              const SizedBox(height: 20),
              // --
              _buildPasswordField(),
              const SizedBox(height: 16),
              _buildForgotPass(),
              const SizedBox(height: 40),
              _buildLoginButton(),
              const SizedBox(height: 40),
              _buildSocialLoginRow(),
              const SizedBox(height: 40),
              _buildCreateNewAccount()
            ],
          ),
        ),
      ),
    );
  }

  Row _buildCreateNewAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: const Text(
            'Create New Account',
            style: TextStyle(color: iconColor, fontSize: 14),
          ),
        ),
      ],
    );
  }

  AppButton _buildLoginButton() {
    return AppButton(
      title: "Login",
      onPressed: () {},
    );
  }

  Align _buildForgotPass() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: hintColor, fontSize: 14),
        ),
      ),
    );
  }

  AppInputField _buildPasswordField() {
    return AppInputField(
      hintText: 'Password',
      prefixIcon: const AppSvgIcon(SvgIcons.lock),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        child: AppSvgIcon(
          showPassword ? SvgIcons.eye : SvgIcons.eye_off,
        ),
      ),
      obscureText: showPassword,
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
