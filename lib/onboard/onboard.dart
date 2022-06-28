import 'package:algoriza_task1/onboard/build_page.dart';
import 'package:algoriza_task1/screens/login_screen.dart';
import 'package:algoriza_task1/screens/register_screen.dart';
import 'package:algoriza_task1/widgets/botton_widget.dart';
import 'package:algoriza_task1/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              controller.jumpToPage(2);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.2),
        child: PageView(
          controller: controller,
          children: [
            BuildPage(
              urlimage: 'images/In no time-pana.png',
              title: 'Get food delivery to your doorstep asap',
              subTitle:
                  'We have young and profissional delivery team that will bring your food as soon as possible to your door step',
            ),
            BuildPage(
              urlimage: 'images/Online Groceries-pana.png',
              title: 'Buy any food from your favourite restaurant',
              subTitle:
                  'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
            ),
            BuildPage(
              urlimage: 'images/Order food-pana.png',
              title: 'Buy any food from your favourite restaurant',
              subTitle:
                  'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * 0.20, //140,
        child: Column(
          children: [
            const SizedBox(height: 15),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Colors.orangeAccent,
                dotColor: Colors.grey,
                dotWidth: 20,
                dotHeight: 5,
              ),
            ),
            const SizedBox(height: 25),
            BottonWidget(
              title: 'Get Started',
              color: Colors.teal,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => const LoginScreen()));
              },
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Don\'t have an account?',
                  color: Colors.black,
                  textsize: 15,
                  letterSpacing: 1.7,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => const RegisterScreen()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
