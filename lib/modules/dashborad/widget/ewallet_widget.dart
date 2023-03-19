import 'package:flutter/material.dart';
import 'package:ibanking/theme/color.dart';

import '../../../theme/text_style.dart';

class EwalletWidget extends StatelessWidget {
  final List<Map<String, String>> menuitem;
  EwalletWidget({super.key, required this.menuitem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        controller: PageController(initialPage: 0, viewportFraction: 0.9),
        itemCount: menuitem.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorApp.primary.withOpacity(.2),
                boxShadow: [
                  BoxShadow(
                      color: ColorApp.white,
                      offset: Offset(-3, -3),
                      blurRadius: 10)
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    menuitem[index]['icon']!,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        menuitem[index]['label']!,
                        textAlign: TextAlign.center,
                        style: TextStyleApp.textstyleNormalSize10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          height: 20,
                          child: Text(
                            'Hubungkan',
                            style: TextStyleApp.textstyleBlueSize12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
