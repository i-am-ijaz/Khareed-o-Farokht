import 'package:flutter/material.dart';
import 'package:khareedo_farokht/screens/home/home_screen.dart';
import 'package:khareedo_farokht/utils/colors.dart';
import 'package:khareedo_farokht/widgets/custom_elevated_button.dart';
import 'package:page_transition/page_transition.dart';
import 'on_boarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;

  final List<Map<String, String>> onBoardingData = [
    {
      'text':
          'It was popularised in 1960s with the \nrelease of Letraset sheets containing',
      'imageUrl': 'assets/images/shopping.svg',
      'title': 'E Shopping'
    },
    {
      'text': 'Add your favorite product to cart',
      'imageUrl': 'assets/images/add_to_cart.svg',
      'title': 'Add to Cart'
    },
    {
      'text': 'Confirm your order and happy shopping',
      'imageUrl': 'assets/images/order_confirm.svg',
      'title': 'Confirm Order'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: HomeScreen(),
                        type: PageTransitionType.leftToRight)),
                child: Text(
                  'Skip',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: primaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onBoardingData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    imageUrl: onBoardingData.elementAt(index)['imageUrl'],
                    text: onBoardingData.elementAt(index)['text'],
                    title: onBoardingData.elementAt(index)['title'],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingData.length,
                      (index) => buildDot(index),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            text: 'Continue',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: HomeScreen(),
                                      type: PageTransitionType.leftToRight));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
