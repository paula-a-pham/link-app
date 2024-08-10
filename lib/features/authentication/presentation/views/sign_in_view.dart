import 'package:flutter/material.dart';
import 'package:link/features/authentication/presentation/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SignInViewBody(),
    );
  }
}
