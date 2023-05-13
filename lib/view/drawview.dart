import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tea_shop/utils/colors.dart';
import 'package:tea_shop/utils/import.dart';

import '../resources/text_styles/app_medium_text.dart';
import '../resources/text_styles/app_small_text.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/vectors/Ellipse 2.svg",
          ),
          SvgPicture.asset("assets/vectors/Ellipse 1.svg"),
          Positioned(
              top: 40,
              left: 300,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new))),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: 150.h,
              width: 150.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Person.png"),
                      fit: BoxFit.contain)),
            ),
          ),
          Positioned(
            top: 165,
            left: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppMediumText(
                  text: "Jhon Tim",
                  fontsize: 22,
                ),
                AppSmallText(
                  text: "Edit Profile",
                  color: kDeep,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                )
              ],
            ),
          ),
          Positioned(
            top: 255,
            child: Container(
              height: 1,
              width: 270,
              decoration: const BoxDecoration(color: kDeep),
            ),
          ),
          Positioned(
            top: 270,
            left: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Divider(),
                AppMediumText(text: "Categories"),
                Divider(),
                AppMediumText(text: "Your Orders"),
                Divider(),
                AppMediumText(text: "Wishlist"),
                Divider(),
                AppMediumText(text: "FAQs"),
                Divider(),
                AppMediumText(text: "Log Out"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
