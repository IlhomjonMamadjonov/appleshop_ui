import 'package:appleshop_ui/pages/home_page.dart';
import 'package:appleshop_ui/pages/apple_shop_ui.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppleShop());

class AppleShop extends StatelessWidget {
  const AppleShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepOrangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: AppleShopUi(),
      routes: {
        HomePage.id: (context) => HomePage(),
        AppleShopUi.id: (context) => AppleShopUi(),
      },
    );
  }
}
