import 'package:tea_shop/utils/import.dart';
import 'package:tea_shop/utils/customnavbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> gridmap = [
      {
        "beverages-name": "Lemon Tea",
        "beverages-image": "assets/images/Lemon.png",
      },
      {
        "beverages-name": "Black Tea",
        "beverages-image": "assets/images/Black Tea.png",
      },
      {
        "beverages-name": "Green Tea",
        "beverages-image": "assets/images/Black Tea.png",
      },
      {
        "beverages-name": "Black Tea",
        "beverages-image": "assets/images/Black Tea.png",
      },
      {
        "beverages-name": "Green Tea",
        "beverages-image": "assets/images/Black Tea.png",
      },
      {
        "beverages-name": "Bubble Tea",
        "beverages-image": "assets/images/Bubble Tea.png",
      },
      {
        "beverages-name": "Purple Tea",
        "beverages-image": "assets/images/Purple Tea.png",
      },
    ];
    final List<Map<String, String>> listmap = [
      {
        "beverages-title": "Bubble Tea",
        "beverages-price": " 56.99",
        "beverages-subtitle": "Good day time",
        "beverages-image": "assets/images/Bubble Tea.png",
      },
      {
        "beverages-title": "Purple Tea",
        "beverages-price": " 25.99",
        "beverages-subtitle": "Happy Hours",
        "beverages-image": "assets/images/Purple Tea.png",
      },
      {
        "beverages-title": "Bubble Tea",
        "beverages-price": " 44.99",
        "beverages-subtitle": "Good Day",
        "beverages-image": "assets/images/Purple Tea.png",
      },
    ];
    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: AppMediumText(
            text: "Hi,John!",
            color: kDeep,
            fontsize: 25,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DrawerView(),
              ),
            );
          },
          icon: const Icon(
            Icons.menu,
            color: kDeep,
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.kHalfPad,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  filled: true,
                  fillColor: kprimarylightDeep,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppSmallText(
                    text: "Recomendation",
                    fontSize: 18,
                    color: kprimarydeep,
                  ),
                  AppSmallText(
                    text: "Black Tea",
                    fontSize: 18,
                    color: kDeep,
                    fontWeight: FontWeight.w400,
                  ),
                  AppSmallText(
                    text: "Green Tea",
                    fontSize: 18,
                    color: kDeep,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: gridmap.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PurchaseView()));
                      },
                      child: Container(
                        width: 135.w,
                        decoration: BoxDecoration(
                          color: kprimarylight,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (index == 0)
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.bookmark,
                                  color: kprimarydeep,
                                  size: 30.0,
                                ),
                              ),
                            Expanded(
                              child: Image.asset(
                                gridmap[index]["beverages-image"]!,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppSmallText(
                              text: gridmap[index]["beverages-name"]!,
                              fontSize: 18,
                              color: kprimarydeep,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.w);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: AppPadding.kHalfPad,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const LinearProgressIndicator(
                    backgroundColor: kprimarylightDeep,
                    value: 0.2,
                    minHeight: 10,
                    valueColor: AlwaysStoppedAnimation<Color>(kprimarylight),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const AppMediumText(
                text: "Will Buy",
                fontsize: 20,
                color: kDeep,
              ),
              const SizedBox(height: 15),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Container(
                      height: 60.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: kprimarylight,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 20,
                              right: 30,
                              child: Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: const BoxDecoration(
                                    color: kSecondarylight,
                                    shape: BoxShape.circle),
                              )),
                          Positioned(
                              top: 5,
                              left: 10,
                              bottom: 5,
                              child: Image.asset(
                                listmap[index]["beverages-image"]!,
                              )),
                        ],
                      ),
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: AppSmallText(
                        text: listmap[index]["beverages-title"]!,
                        fontSize: 18,
                        color: kprimarydeep,
                      ),
                    ),
                    subtitle: Align(
                      alignment: Alignment.centerLeft,
                      child: AppSmallText(
                        text: listmap[index]["beverages-subtitle"]!,
                        fontSize: 15,
                        color: kprimarydeep,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppSmallText(
                          text: "\$",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: ksecondaryDeep,
                        ),
                        AppSmallText(
                          text: listmap[index]["beverages-price"]!,
                          fontSize: 18,
                          color: kprimarydeep,
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: Navbar(),
    );
  }
}
