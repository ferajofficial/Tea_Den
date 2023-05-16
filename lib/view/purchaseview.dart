import 'package:tea_shop/utils/import.dart';

class PurchaseView extends StatelessWidget {
  const PurchaseView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> particularsmap = [
      {
        "beverages-particulars": "500 ml",
      },
      {
        "beverages-particulars": "Less Ice",
      },
      {
        "beverages-particulars": "Sugar",
      },
    ];
    return Scaffold(
      backgroundColor: kprimarylight,
      body: Stack(
        children: [
          Positioned(
            left: 200,
            child: SvgPicture.asset(
              "assets/vectors/Ellipse 3.svg",
              height: 300,
            ),
          ),
          Positioned(
            left: 30,
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppMediumText(
                  text: "Lemon Tea",
                  fontsize: 25,
                  color: kprimarydeep,
                ),
                const AppSmallText(
                  text: "Good day time",
                  color: kprimarydeep,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppSmallText(
                      text: "\$",
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: kprimarydeep,
                    ),
                    AppMediumText(
                      text: "12.99",
                      fontsize: 45,
                      color: kprimarydeep,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 25,
            top: 50,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.white,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: AppPadding.kSinglePad,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    const AppMediumText(
                      text: "Particulars",
                      fontsize: 25,
                    ),
                    SizedBox(height: 15.h),
                    const AppSmallText(
                      text:
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book.It has survived not only five centuries''',
                      fontSize: 15,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: kSecondarylight,
                        ),
                        Icon(
                          Icons.star,
                          color: kSecondarylight,
                        ),
                        Icon(
                          Icons.star,
                          color: kSecondarylight,
                        ),
                        Icon(
                          Icons.star,
                          color: kSecondarylight,
                        ),
                        Icon(
                          Icons.star,
                          color: kSecondarylight,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 50.h,
                        child: ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 10.w);
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              //height: 10.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                  color: kprimarylight,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AppSmallText(
                                    text: particularsmap[index]
                                        ["beverages-particulars"]!,
                                    fontSize: 13,
                                    color: kprimarydeep,
                                    //fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 35.h),
                    const AppMediumText(text: "Services", fontsize: 25),
                    const AppSmallText(
                      text: "Lorem Ipsum is simply dummy text of the printing ",
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.lock_clock_outlined,
                          size: 30,
                        ),
                        const Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          height: 40.h,
                          width: 150.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                backgroundColor: kSecondarylight),
                            onPressed: () {},
                            child: const AppMediumText(
                              text: "Purchase",
                              color: Colors.white,
                              fontsize: 20,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 180,
            bottom: 340,
            child: Image.asset(
              "assets/images/image 2.png",
              height: 600,
            ),
          ),
        ],
      ),
    );
  }
}
