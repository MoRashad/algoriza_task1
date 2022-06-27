import 'package:algoriza_task1/onboard/build_page.dart';
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
            const SizedBox(height: 5),
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
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 15, letterSpacing: 1.1),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
