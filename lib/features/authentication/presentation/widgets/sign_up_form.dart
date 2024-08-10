import 'package:flutter/material.dart';
import 'package:link/core/utils/helpers/validators/email_validator_helper.dart';
import 'package:link/core/utils/helpers/validators/name_validator_helper.dart';
import 'package:link/core/utils/helpers/validators/password_validator_helper.dart';
import 'package:link/core/widgets/custom_filled_button.dart';
import 'package:link/features/authentication/presentation/widgets/auth_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AuthTextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            controller: emailController,
            hintText: 'Name',
            prefixIcon: Icons.person_rounded,
            validator: NameValidatorHelper.validateName,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 25.0,
          ),
          AuthTextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            controller: emailController,
            hintText: 'Email',
            prefixIcon: Icons.email_rounded,
            validator: EmailValidatorHelper.validateEmailAddress,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 25.0,
          ),
          AuthTextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            controller: passwordController,
            hintText: 'Password',
            prefixIcon: Icons.lock_rounded,
            validator: PasswordValidatorHelper.validatePassword,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            suffixIcon: Icons.visibility_rounded,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: CustomFilledButton(
                  onPressed: () {},
                  text: 'Sign up',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
