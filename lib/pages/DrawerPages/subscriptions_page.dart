import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Subscriptions")),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              PageImage(
                imageName: "assets/images/plans.png",
              ),
              PageImage(
                imageName: "assets/images/plans.png",
              ),
              PageImage(
                imageName: "assets/images/plans.png",
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
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

class PageImage extends StatelessWidget {
  const PageImage({Key? key, required this.imageName}) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageName),
        ),
      ),
    );
  }
}
