import 'package:athan_messager/components/my_button.dart';
import 'package:athan_messager/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  void Function()? onTap;
  RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

// sign up user
  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  Hero(
                    tag: 'logo',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Image.asset(
                        'images/logo.png',
                        height: 100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),

                  // welcome back message
                  const Text(
                    'Let\'s create an account for you!',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 25),

                  // email text field
                  MyTextField(
                    controller: emailController,
                    hintText: 'email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // password text field
                  MyTextField(
                    controller: passwordController,
                    hintText: 'password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  // confirm password text field
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(onTap: signUp, text: 'Login'),

                  const SizedBox(height: 50),

                  // not a number? reqister now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member?'),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
