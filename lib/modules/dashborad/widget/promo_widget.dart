import 'package:flutter/material.dart';
import 'package:ibanking/theme/color.dart';

class PromoWidget extends StatelessWidget {
  final List<Map<String, String>> menuitem;
  PromoWidget({super.key, required this.menuitem});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        menuitem[index]['icon']!,
                      )),
                  boxShadow: [
                    BoxShadow(
                        color: ColorApp.white,
                        offset: Offset(-3, -3),
                        blurRadius: 10)
                  ]),
            );
          },
        ),
      ),
    );
  }
}
