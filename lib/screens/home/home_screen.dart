import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khareedo_farokht/utils/colors.dart';
import 'package:khareedo_farokht/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Khareedo Farokht',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white,
              ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: defaultPadding),
        child: Column(
          children: [
            //SEARCH
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: Offset(0, 2), // c
                    ),
                  ],
                  color: Color(0xFFEFEFEF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: primaryColor.withOpacity(0.5),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            //Categories
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor.withOpacity(0.2),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/fashion.svg',
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          'Women',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
