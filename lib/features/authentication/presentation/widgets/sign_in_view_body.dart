import 'package:flutter/material.dart';
import 'package:link/core/constants/app_colors.dart';
import 'package:link/features/authentication/presentation/widgets/sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login here',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: AppColors.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Welcome back you\'ve\nbeen missed!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SignInForm(),
          ],
        ),
      ),
    );
  }
}
