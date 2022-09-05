import 'package:flutter/material.dart';
import 'package:lets_love_right/pages/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                lastPage = (index == 2);
              });
            },
            children: const [
              OnboardingPage(pageContent: "assets/images/onboarding_1.png"),
              OnboardingPage(pageContent: "assets/images/onboarding_2.png"),
              OnboardingPage(pageContent: "assets/images/onboarding_3.png"),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: lastPage
                ? Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                : Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
          ),
          Container(
            alignment: const Alignment(0, 0.95),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),
          ),
        ],
      ),
    );
  }
}

// Onboarding Screen Pages
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key, required this.pageContent}) : super(key: key);

  final String pageContent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pageContent),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
