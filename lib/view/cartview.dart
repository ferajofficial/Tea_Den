import 'package:flutter/material.dart';
import 'package:tea_shop/utils/import.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cartmap = [
      {
        "beverages-title": "Purple Tea",
        "beverages-price": " 25.99",
        "beverages-subtitle": "Happy Hours",
        "beverages-image": "assets/images/Purple Tea.png",
      },
      {
        "beverages-title": "Bubble Tea",
        "beverages-price": " 56.99",
        "beverages-subtitle": "Good day time",
        "beverages-image": "assets/images/Bubble Tea.png",
      },
      {
        "beverages-title": "Lemon Tea",
        "beverages-price": " 44.99",
        "beverages-subtitle": "Good Day",
        "beverages-image": "assets/images/Purple Tea.png",
      },
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 250,
            child: SvgPicture.asset(
              "assets/vectors/Ellipse 4.svg",
              height: 200,
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppMediumText(
                  text: "Shopping Cart",
                  fontsize: 35,
                ),
                const AppSmallText(
                  text: "3 items in cart",
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      // tileColor: kprimarylight,
                      leading: Container(
                        height: 70.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: kprimarylight,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              right: 25,
                              child: Image.asset(
                                "assets/vectors/Ellipse 1.png",
                                color: kSecondarylight,
                                height: 100,
                              ),
                            ),
                            Positioned(
                                top: 5,
                                left: 10,
                                bottom: 5,
                                child: Image.asset(
                                  cartmap[index]["beverages-image"]!,
                                )),
                          ],
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppSmallText(
                              text: cartmap[index]["beverages-title"]!,
                              fontSize: 20,
                              color: kprimarydeep,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.remove_outlined,
                            color: ksecondaryDeep,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const AppSmallText(
                            text: "1",
                            fontSize: 20,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(
                            Icons.add,
                            color: ksecondaryDeep,
                            size: 20,
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppSmallText(
                              text: "\$",
                              fontSize: 12,
                              color: ksecondaryDeep,
                              fontWeight: FontWeight.w400),
                          AppSmallText(
                            text: cartmap[index]["beverages-price"]!,
                            fontSize: 18,
                            color: kprimarydeep,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      //TODO: add - and + symbol @ trailing
                      //trailing:
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: const [
                      //     Icon(Icons.minimize_outlined, color: ksecondaryDeep),
                      //     AppSmallText(text: "1"),
                      //     Icon(Icons.add, color: ksecondaryDeep),
                      //   ],
                      // ),
                      //     AppSmallText(
                      //   text: cartmap[index]["beverages-price"]!,
                      //   fontSize: 18,
                      //   color: kprimarydeep,
                      // ),
                    );
                  },
                ),
                SizedBox(height: 130.h),
                Container(
                    height: 50.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      color: kSecondarylight,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: AppPadding.kQuatVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const AppSmallText(
                            text: "Total",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppSmallText(
                                text: "\$",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              AppMediumText(
                                text: "99.89",
                                fontsize: 23,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const AppMediumText(
                            text: "Next",
                            color: Colors.white,
                            fontsize: 25,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 25,
                              )),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
