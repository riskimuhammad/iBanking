import 'package:flutter/material.dart';
import 'package:ibanking/modules/dashborad/constant/dashborad_contant.dart';
import 'package:ibanking/modules/dashborad/constant/ewallet_constant.dart';
import 'package:ibanking/modules/dashborad/constant/promo_constant.dart';
import 'package:ibanking/modules/dashborad/widget/ewallet_widget.dart';
import 'package:ibanking/modules/dashborad/widget/feature_widget.dart';
import 'package:ibanking/modules/dashborad/widget/promo_widget.dart';
import 'package:ibanking/modules/dashborad/widget/title_widget.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({super.key});

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  final feature = DashboardFeature.feature();
  final ewallet = DashboardEwallet.ewallet();
  final promo = DashboardPromo.promo();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height - 260,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget.text('Feature'),
          FeatureWidget(menuitem: feature),
          TitleWidget.text('Dompet Digital'),
          EwalletWidget(menuitem: ewallet),
          TitleWidget.text('Promo'),
          PromoWidget(menuitem: promo),
        ],
      ),
    );
  }
}
