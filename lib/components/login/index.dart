import 'package:flutter/material.dart';
import 'package:inspiration/components/login/Socialitem.dart';

import 'MyTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo/facebook.png',
                  height: 120,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 70),
                  child: Text(
                    'New APP Inspatation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MyTextField(
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  isPassword: false,
                  controller: emailController,
                ),
                MyTextField(
                  hint: 'Password',
                  inputType: TextInputType.text,
                  isPassword: true,
                  controller: passwordController,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () => debugPrint('Go to home page'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 35.0),
                  child: Text(
                      '----------------------------- OR Login With -----------------------------'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialItem(image: 'assets/logo/facebook.png'),
                    SocialItem(image: 'assets/logo/instagram.png'),
                    SocialItem(image: 'assets/logo/gmail.png'),
                  ],
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have account yet? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
