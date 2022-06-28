import 'package:algoriza_task1/widgets/botton_widget.dart';
import 'package:algoriza_task1/widgets/outlined_button.dart';
import 'package:algoriza_task1/widgets/phone_field_widget.dart';
import 'package:algoriza_task1/widgets/text_field_widget.dart';
import 'package:algoriza_task1/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  'images/—Pngtree—cream geometric email newsletter_1443478.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 140,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo[900],
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                ),
              ],
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
                        text: 'Register',
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
                    text: 'Email Address',
                    color: Colors.blueGrey,
                    textsize: 15,
                    isTitle: true,
                  ),
                  const SizedBox(height: 5),
                  TextInputField(
                    controller: emailController,
                    label: 'enter email address',
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(height: 10),
                  TextWidget(
                    text: 'Phone Number',
                    color: Colors.blueGrey,
                    textsize: 15,
                    isTitle: true,
                  ),
                  const SizedBox(height: 5),
                  const PhoneField(),
                  TextWidget(
                    text: 'Password',
                    color: Colors.blueGrey,
                    textsize: 15,
                    isTitle: true,
                  ),
                  const SizedBox(height: 5),
                  TextInputField(
                    controller: passwordController,
                    label: 'enter Password',
                    color: Colors.blueGrey,
                    isObscure: true,
                  ),
                  const SizedBox(height: 15),
                  BottonWidget(
                    title: 'Register',
                    color: Colors.blue,
                    onTap: () {
                      //print('register');
                    },
                    radius: 5,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height * 0.2),
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: TextWidget(
                      text: 'Or',
                      color: Colors.grey,
                      textsize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlineButton(
                    onPressed: () {},
                    borderColor: Colors.blue,
                    image:
                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                    text: 'Register with Google',
                    textColor: Colors.blueGrey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Have an account?',
                        color: Colors.black,
                        textsize: 15,
                        letterSpacing: 1.5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign In here',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        TextWidget(
                          text: 'By registering your account you agree to our',
                          color: Colors.blueGrey,
                          textsize: 14,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'terms and conditions',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
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
