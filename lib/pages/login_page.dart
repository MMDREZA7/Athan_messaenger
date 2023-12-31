import 'package:athan_messager/components/my_button.dart';
import 'package:athan_messager/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  void Function()? onTap;
  LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// sign in user
  void signIn() {}

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
                    'Welcome back you\'ve been meesed!',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 25),

                  // email text field
                  MyTextField(
                    controller: emailController,
                    hintText: 'Enter your email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // password text field
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(onTap: signIn, text: 'Login'),

                  const SizedBox(height: 50),

                  // not a number? reqister now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member?'),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Register now',
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
