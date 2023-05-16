//this is the textstyle of subtitle1
//! Don't use font sizes less than 16 because it is the least size visible to a user in a UI

import 'package:tea_shop/utils/import.dart';

class AppMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double fontsize;
  //final double fontFeature;

  const AppMediumText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight = FontWeight.bold,
    this.letterSpacing,
    this.fontsize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.clip,
      style: GoogleFonts.nunitoSans(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
