// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task7/views/home_view.dart';
import 'package:task7/views/login_view.dart';

// todo
TextEditingController username = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
      body: Column(
        children: [
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
          // todo
          Spacer(
            flex: 1,
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/conversation.gif'),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            controller: username,
            decoration: const InputDecoration(
              labelText: 'username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            controller: email,
            decoration: const InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                )),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            // todo
            obscureText: _obscureText,
            controller: password,
            decoration: InputDecoration(
                labelText: 'password',
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
                )),
          ),
          Spacer(
            flex: 1,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (username != username.text &&
                    email != email.text &&
                    password != password.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                }
              });
            },
            child: Text(
              'SignUp',
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
                  text: 'Already have an account ?',
                ),
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigate to sign-in page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
