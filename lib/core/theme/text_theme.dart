import 'package:flutter/material.dart';
import 'package:rps_battle/core/theme/colors.dart';
import '../utils/size_config.dart';

// Ukuran Font

// < 3.5 = Very Small
// 3.5 = Small
// 4 = Medium
// 4.5 = Medium Large
// 5 = Large
// 7 & 10 = Extra or Super Large

// Text with White Color (Large, Medium, and Small)
final textVerySmall300White = TextStyle(
  color: Colors.white,
  fontSize: SizeConfig.blockV! * 2,
  fontWeight: FontWeight.w300,
);

final textVerySmallBoldWhite = TextStyle(
  color: Colors.white,
  fontSize: SizeConfig.blockV! * 2,
  fontWeight: FontWeight.bold,
);

final textLargeBoldWhite = TextStyle(
  color: Colors.white,
  fontSize: SizeConfig.blockV! * 5,
  fontWeight: FontWeight.bold,
);

// Text with Smoky Black Color (Large, Medium, and Small)
final textVerySmallBoldSmokyBlack = TextStyle(
  color: smokyBlack,
  fontSize: SizeConfig.blockV! * 2,
  fontWeight: FontWeight.bold,
);

// Text with Caribbean Green Color (Large, Medium, and Small)
final textVerySmallBoldCarGreen = TextStyle(
  color: caribbeanGreen,
  fontSize: SizeConfig.blockV! * 2,
  fontWeight: FontWeight.bold,
);

final textSmallBoldCarGreen = TextStyle(
  color: caribbeanGreen,
  fontSize: SizeConfig.blockV! * 3.5,
  fontWeight: FontWeight.bold,
);

final textLargeBoldCarGreen = TextStyle(
  color: caribbeanGreen,
  fontSize: SizeConfig.blockV! * 5,
  fontWeight: FontWeight.bold,
);
