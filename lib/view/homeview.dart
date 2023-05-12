import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.menu, color: kDeep),
        // ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            // SvgPicture.asset("assets/vectors/Ellipse 2.svg"),
            Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset("assets/vectors/Group 1.svg")),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
