import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';
import 'font_size.dart';

Widget textWidget(
  String text, {
  double? size = kfsMedium,
  Color? color = kcTextColor,
  FontWeight? fontWeight = FontWeight.w400,
  TextAlign? align = TextAlign.justify,
  int? maxLines,
  TextOverflow? overflow,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    ),
    textAlign: align,
    overflow: overflow,
    softWrap: true,
    maxLines: maxLines,
  );
}
