


import 'package:tea_shop/utils/import.dart';

class AppRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final bool isStroke;
  const AppRichText({
    super.key,
    required this.text1,
    required this.text2,
    required this.isStroke,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1.toUpperCase(),
            style: GoogleFonts.nunitoSans(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: text2.toUpperCase(),
            style: GoogleFonts.nunitoSans(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1.5
                ..color = const Color(0xFF717171),
            ),
          ),
          TextSpan(
            text: '.',
            style: GoogleFonts.nunitoSans(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
