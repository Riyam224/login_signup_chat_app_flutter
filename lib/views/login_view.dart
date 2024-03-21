// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task7/views/home_view.dart';
import 'package:task7/views/sign_up_view.dart';

// todo
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // todo
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff89cade),
        title: const Text(
          'Chat App',
          style: TextStyle(
            fontFamily: 'Mulish',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // todo
            Spacer(
              flex: 2,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black,
              ),
            ),

            Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/conversation.gif'),
            ),
            // todo
            Spacer(
              flex: 1,
            ),
            TextField(
              // todo
              controller: username,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
              ),
            ),
            // todo
            Spacer(
              flex: 1,
            ),
            // todo
            TextField(
              // todo
              controller: password,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                // todo
                suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    }),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
              ),
            ),
            // todo
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                // todo
                setState(() {
                  if (username.text == "totoro" && password.text == '1234') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeView();
                        },
                      ),
                    );
                  }
                });
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff89cade),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
              ),
            ),
            // todo
            Spacer(
              flex: 1,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "don't have an account ? ",
                  ),
                  TextSpan(
                    text: "SignUp",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to sign-in page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpView()),
                        );
                      },
                  ),
                ],
              ),
            ),
            // todo
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
