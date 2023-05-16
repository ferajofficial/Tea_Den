import 'package:tea_shop/utils/import.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 300,
            child: SvgPicture.asset(
              "assets/vectors/DrawBg.svg",
              height: 670,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 40,
              left: 360,
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
              children: [
                //Divider(),
                SizedBox(height: 10.h),
                const AppMediumText(text: "Categories"),
                SizedBox(height: 10.h),
                const AppMediumText(text: "Your Orders"),
                SizedBox(height: 10.h),
                const AppMediumText(text: "Wishlist"),
                SizedBox(height: 10.h),
                const AppMediumText(text: "FAQs"),
                SizedBox(height: 10.h),
                const AppMediumText(text: "Log Out"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
