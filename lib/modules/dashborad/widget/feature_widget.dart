import 'package:flutter/material.dart';

import '../../../theme/text_style.dart';

class FeatureWidget extends StatelessWidget {
  final List<Map<String, String>> menuitem;
  FeatureWidget({super.key, required this.menuitem});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 20),
      shrinkWrap: true,
      itemCount: menuitem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8, crossAxisCount: 4, crossAxisSpacing: 20),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 50,
              width: 50,
              child: Image.asset(
                menuitem[index]['icon']!,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 60,
              height: 40,
              child: Text(
                menuitem[index]['label']!,
                textAlign: TextAlign.center,
                style: TextStyleApp.textstyleNormalSize10,
              ),
            )
          ],
        );
      },
    );
  }
}
