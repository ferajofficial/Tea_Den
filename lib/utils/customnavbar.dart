
import 'package:flutter/services.dart';
import 'package:tea_shop/utils/import.dart';


class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  NavState createState() => NavState();
}

class NavState extends State<Navbar> {
  List screen = [
    const OfficeView(),
    const HomeView(),
    const CartView(),
  ];
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: 50.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: 45.h,
                      width: 53.w,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? kprimarylight
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .03
                                  : 20,
                              alignment: Alignment.center,
                            ),
                            SvgPicture.asset(
                              iconmap[index]["beverages-image"]!,
                              color: index == currentIndex
                                  ? Colors.white
                                  : Colors.black26,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Map<String, String>> iconmap = [
    {
      "beverages-image": "assets/icons/Office.svg",
    },
    {
      "beverages-image": "assets/icons/Home.svg",
    },
    {
      "beverages-image": "assets/icons/Cart.svg",
    },
  ];
}
