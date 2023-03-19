import 'package:flutter/material.dart';

import '../../../theme/text_style.dart';

class TitleWidget {
  static text(String title) {
    return Text(
      title,
      style: TextStyleApp.textstyleNormalSize16Bold,
    );
  }
}
