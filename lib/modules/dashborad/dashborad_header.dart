import 'package:flutter/material.dart';
import 'package:ibanking/theme/color.dart';
import 'package:ibanking/theme/text_style.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      color: ColorApp.primary,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Muhammad Riski',
              style: TextStyleApp.textstyleWhiteSize12Bold,
            ),
            subtitle: Text(
              'ID: 1772-887-99388',
              style: TextStyleApp.textstyleGraySize12,
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://tse1.mm.bing.net/th?id=OIP.leRaZskYpTKA55a0St0tZgHaJa&pid=Api&P=0',
              ),
            ),
          ),
          Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ColorApp.white, borderRadius: BorderRadius.circular(30)),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Saldo Kantong Utama',
                  style: TextStyleApp.textstyleDarkBlueSize12,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rp. 1.000.000,00',
                  style: TextStyleApp.textstyleDarkBlueSize16Bold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
