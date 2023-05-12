//this is the textstyle of subtitle1
//! Don't use font sizes less than 16 because it is the least size visible to a user in a UI


import 'package:tea_shop/utils/import.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double? letterSpacing;

  const AppLargeText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight = FontWeight.w800,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.clip,
      style: GoogleFonts.nunitoSans(
        fontSize: 45.sp,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: 1.2.h,
      ),
    );
  }
}
