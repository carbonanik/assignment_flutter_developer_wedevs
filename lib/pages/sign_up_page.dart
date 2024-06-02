import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_button.dart';
import 'package:assignment_flutter_developer_wedevs/pages/dialogs/basic_error_dialog.dart';
import 'package:assignment_flutter_developer_wedevs/pages/home.dart';
import 'package:assignment_flutter_developer_wedevs/utils/navigation.dart';
import 'package:assignment_flutter_developer_wedevs/utils/validator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/gen/assets.gen.dart';
import '../provider/registration_provider.dart';
import 'components/app_input_field.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(text: 'anik');
  final _emailController = TextEditingController(text: 'anik');
  final _passwordController = TextEditingController(text: 'anik');
  final _confirmPasswordController = TextEditingController(text: 'anik');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  onError(previous, next) {
    if (next != null && next is DioException) {
      showDialog(
        context: context,
        builder: (context) {
          return BasicErrorDialog(
            title: next.response?.data?.toString() ?? 'Error',
          );
        },
      );
    }
  }

  onSuccess(previous, next) {
    if (next != null) {
      context.push(const Home());
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(registrationsErrorProvider, onError);
    ref.listen(registrationsSuccessProvider, onSuccess);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
      title: ref.watch(registrationsLoadingProvider) ? 'Loading...' : "Sign Up",
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ref.read(registrationsProvider.notifier).register(
                email: _emailController.text,
                username: _nameController.text,
                password: _passwordController.text,
              );
        }
      },
    );
  }

  AppInputField _buildPasswordField() {
    return AppInputField(
      hintText: 'Password',
      controller: _passwordController,
      prefixIcon: const AppSvgIcon(SvgIcons.lock),
      validator: Validator.required,
    );
  }

  AppInputField _buildConfirmPasswordField() {
    return AppInputField(
      hintText: 'Confirm Password',
      controller: _confirmPasswordController,
      prefixIcon: const AppSvgIcon(SvgIcons.lock),
      validator: (value) {
        if (value != _passwordController.text) {
          return 'Password does not match';
        }
        return null;
      },
    );
  }

  AppInputField _buildNameField() {
    return AppInputField(
      hintText: 'Name',
      controller: _nameController,
      prefixIcon: const AppSvgIcon(SvgIcons.person),
      validator: Validator.required,
    );
  }

  AppInputField _buildEmailField() {
    return AppInputField(
      hintText: 'Email',
      controller: _emailController,
      prefixIcon: const AppSvgIcon(SvgIcons.email),
      validator: Validator.required,
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
