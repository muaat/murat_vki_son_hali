import 'package:flutter/material.dart';

Color rkZeminArkaPlan = Colors.grey.shade800;

Color rkAktifCardBackColor = Colors.grey.shade700;
Color rkPasifCardBackColor = Colors.grey.shade900;

Color rkCardForeColor = Colors.white70;

TextStyle tsActivCardColor = TextStyle(
  color: rkCardForeColor,
);

TextStyle tsHeightStyle = TextStyle(
  color: rkCardForeColor,
  fontSize: 80,
  fontWeight: FontWeight.bold,
);

TextStyle tsCmStyle = TextStyle(
  color: rkCardForeColor,
);

SliderThemeData stSliderTheme = SliderThemeData(
  inactiveTrackColor: Color(0xFF8D8E98),
  activeTrackColor: Colors.grey.shade800,
  thumbColor: Color(0xFF3D3B3B),
  overlayColor: Color(0x299C8F95),
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 45.0),
);
