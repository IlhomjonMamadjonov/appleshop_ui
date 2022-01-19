import 'package:appleshop_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
String mytext = "Martini?";
class AppleShopUi extends StatefulWidget {
  static const String id = "/apple_shop";

  @override
  _AppleShopUiState createState() => _AppleShopUiState();
}

class _AppleShopUiState extends State<AppleShopUi> {

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.waitForStart(onPhoneShake: () {
      Navigator.pushNamed(context, HomePage.id);
      print("Shaked");
    });

    detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///AppBar
      appBar: AppBar(
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 12.5, horizontal: 5),
            height: 25,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.orange.shade400,
                borderRadius: BorderRadius.circular(7.5)),
            child: Text(
              "7",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Apple Products'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Header
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img_3.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(.3),
                          Colors.black.withOpacity(.01),
                        ])),
                child: Column(
                  children: [
                    //Lifestyle sale
                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Lifestyle sale',
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                    )),

                    //Button Shop now
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                      child: MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    )
                  ],
                ),
              ),
            ),

            ///Body
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return builGridTile(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  ///Widget GridView Builder
  GridTile builGridTile(int index) {
    return GridTile(
      child: Container(
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              image: AssetImage("assets/images/img_${index % 5}.png"),
              fit: BoxFit.cover),
        ),
      ),
      header: Padding(
        padding: EdgeInsets.only(left: 290, top: 10),
        child: Icon(
          Icons.favorite_outlined,
          size: 35,
          color: Colors.red,
        ),
      ),
    );
  }
}
