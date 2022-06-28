import 'package:algoriza_task1/widgets/botton_widget.dart';
import 'package:algoriza_task1/widgets/outlined_button.dart';
import 'package:algoriza_task1/widgets/phone_field_widget.dart';
import 'package:algoriza_task1/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/—Pngtree—cream geometric email newsletter_1443478.png',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Welcome to fashion daily',
                    color: Colors.grey,
                    textsize: 14,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'Sign In',
                        color: Colors.black,
                        textsize: 30,
                        isTitle: true,
                        letterSpacing: 1.5,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: TextWidget(
                                text: 'Help',
                                color: Colors.blue,
                                textsize: 15,
                                isTitle: true,
                              )),
                          const Icon(
                            Icons.help,
                            color: Colors.blue,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextWidget(
                    text: 'Phone Number',
                    color: Colors.blueGrey,
                    textsize: 15,
                    isTitle: true,
                  ),
                  const PhoneField(),
                  const SizedBox(height: 20),
                  BottonWidget(
                    title: 'Sign In',
                    color: Colors.blue,
                    onTap: () {
                      print('signed in');
                    },
                    radius: 5,
                  ),
                  const SizedBox(height: 15),
                  Stack(
                    children: [
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * 0.2),
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: TextWidget(
                          text: 'Or',
                          color: Colors.grey,
                          textsize: 12,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  OutlineButton(
                    onPressed: () {},
                    borderColor: Colors.blue,
                    image:
                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                    text: 'Sign in with Google',
                    textColor: Colors.blueGrey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Don\'t have an account?',
                        color: Colors.black,
                        textsize: 15,
                        letterSpacing: 1.5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register Here',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TextWidget(
                    text:
                        'Use the application according to policy rules. Any kinds of violations will be subjected to sanctions',
                    color: Colors.blueGrey,
                    textsize: 12,
                    maxLines: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
