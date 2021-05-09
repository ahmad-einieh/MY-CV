import 'package:cv_app/widgets/svg_loader.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/utils/AppColors.dart';

Widget NavigationBar(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          svgLoader(
            icon,
            height: height,
            width: width,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: isSelected ? navigationSelectionColor : Colors.transparent,
            ),
          )
        ],
      ),
    ),
  );
}
