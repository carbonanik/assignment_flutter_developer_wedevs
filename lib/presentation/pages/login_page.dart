import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/presentation/components/app_button.dart';
import 'package:assignment_flutter_developer_wedevs/presentation/pages/sign_up_page.dart';
import 'package:assignment_flutter_developer_wedevs/provider/login_provider.dart';
import 'package:assignment_flutter_developer_wedevs/utils/navigation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/gen/assets.gen.dart';
import '../../model/login_response.dart';
import '../../utils/validator.dart';
import '../components/app_input_field.dart';
import '../dialogs/basic_error_dialog.dart';
import 'home.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool showPassword = false;

  onError(previous, next) {
    if (next != null && next is DioException) {
      showDialog(
        context: context,
        builder: (context) {
          return BasicErrorDialog(
            title: next.response?.data?['message'] ?? 'Error',
          );
        },
      );
    }
  }

  void onSuccess(previous, LoginResponse? next) async {
    if (next != null) {
      // showSnackBar(context, 'Login Successful');
      context.push(const Home());
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginErrorProvider, onError);
    ref.listen(loginSuccessProvider, onSuccess);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
      ),
    );
  }

  Row _buildCreateNewAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            context.pushReplacement(const SignUpPage());
          },
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
      title: ref.watch(loginLoadingProvider) ? 'Loading...' : "Login",
      enabled: !ref.watch(loginLoadingProvider),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ref.read(loginProvider.notifier).login(
                username: _emailController.text,
                password: _passwordController.text,
              );
        }
      },
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
        child: Icon(
          showPassword ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
      ),
      obscureText: !showPassword,
      controller: _passwordController,
      validator: Validator.required,
    );
  }

  AppInputField _buildEmailField() {
    return AppInputField(
      hintText: 'Email',
      prefixIcon: const AppSvgIcon(SvgIcons.email),
      controller: _emailController,
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
