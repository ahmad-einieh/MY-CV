import 'package:flutter/cupertino.dart';
import 'package:cv_app/utils/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgLoader(String image, {width = 20, height = 20}) {
  return SvgPicture.asset(
    image,
    height: height,
    width: width,
    color: iconTint,
  );
}
