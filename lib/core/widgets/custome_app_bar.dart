import 'package:sneakers_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(BuildContext context, {final String? title}) {
  return AppBar(
    leading: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        ),
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}