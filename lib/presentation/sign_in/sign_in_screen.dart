import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/buttons/big_button.dart';
import 'package:recipe_app/core/presentation/components/input_field/input_field.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Hello,',
                style: TextStyles.headerTextBold,
              ),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              const SizedBox(height: 57),
              InputField(
                label: 'Email',
                placeHolder: 'Enter Email',
              ),
              const SizedBox(height: 30),
              InputField(
                label: 'Password',
                placeHolder: 'Enter Password',
              ),
              const SizedBox(height: 20),
              Text(
                'Forgot Password?',
                style: TextStyles.smallerTextRegular.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
              const SizedBox(height: 25),
              BigButton(
                'Sign In',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  const SizedBox(width: 7),
                  Text(
                    'Or Sign in with',
                    style: TextStyles.smallerTextBold.copyWith(
                      color: ColorStyles.gray4,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/google_button.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    'assets/image/facebook_button.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyles.smallerTextBold,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Sign up',
                    style: TextStyles.smallerTextBold.copyWith(
                      color: ColorStyles.secondary100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
