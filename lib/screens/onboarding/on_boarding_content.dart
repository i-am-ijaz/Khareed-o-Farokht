import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.title,
  }) : super(key: key);

  final String? imageUrl;
  final String? text;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 7,
            child: SvgPicture.asset(
              imageUrl!,
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.5,
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  title!,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                  child: Text(
                    text!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
