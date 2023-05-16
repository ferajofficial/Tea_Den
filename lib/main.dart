import 'package:tea_shop/utils/import.dart';
import 'package:tea_shop/utils/customnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, index) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home:
            //HomeView()
            const Navbar(),
      );
    });
  }
}
