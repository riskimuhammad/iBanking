import 'package:flutter/cupertino.dart';
import 'package:ibanking/theme/color.dart';

class TextStyleApp {
  static final textstyleDarkBlueSize12 = TextStyle(
    color: ColorApp.primary,
    fontSize: 12,
  );
  static final textstyleBlueSize12 = TextStyle(
    color: ColorApp.blue,
    fontSize: 12,
  );
  static final textstyleDarkBlueSize16Bold = TextStyle(
      color: ColorApp.primary, fontSize: 16, fontWeight: FontWeight.bold);
  static final textstyleWhiteSize12 = TextStyle(
    color: ColorApp.white,
    fontSize: 12,
  );
  static final textstyleWhiteSize12Bold = TextStyle(
    color: ColorApp.white,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  static final textstyleGraySize12 = TextStyle(
    color: ColorApp.grey,
    fontSize: 12,
  );
  static final textstyleNormalSize16Bold =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static final textstyleNormalSize10 = TextStyle(
    fontSize: 10,
  );
}
