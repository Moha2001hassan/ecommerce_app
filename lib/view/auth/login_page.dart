import 'package:ecommerce_app/core/constants.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custon_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Welcome,", fontSize: 30),
                  CustomText(
                    text: "Sign Up",
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const CustomText(
                text: "Sign in to Continue",
                fontSize: 16,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                labelText: "email",
                hint: "example@gmail.com",
                onSave: (value) {},
                validator: (value) {
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                labelText: "password",
                hint: "*******",
                onSave: (value) {},
                validator: (value) {
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const CustomText(
                text: "Sign in to Continue",
                fontSize: 12,
                alignment: MainAxisAlignment.end,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "SIGN IN",
                onPressed: () {},
                btnWidth: double.infinity,
                btnHeight: 50,
                txtSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
