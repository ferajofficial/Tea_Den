//this is the textstyle of subtitle1
//! Don't use font sizes less than 16 because it is the least size visible to a user in a UI



import 'package:tea_shop/utils/colors.dart';
import 'package:tea_shop/utils/import.dart';

class AppSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double fontSize;
  final TextAlign? textAlign;
  const AppSmallText({
    Key? key,
    required this.text,
    this.color = kDeep,
    this.fontWeight = FontWeight.bold,
    this.letterSpacing,
    this.textAlign = TextAlign.center,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.clip,
      style: GoogleFonts.nunitoSans(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: 1.3,
      ),
    );
  }
}
