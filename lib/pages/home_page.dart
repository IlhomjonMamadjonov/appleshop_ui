import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apple Products"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 12.5, horizontal: 5),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(7.5)),
            child: Text(
              "7",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ],
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
                  image: AssetImage("assets/images/img_2.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    end: Alignment.center,
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //lifestyle
                    Expanded(child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('Lifestyle sale',style: TextStyle(fontSize: 33,color: Colors.white),),
                    )),

                    //shop now button
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 30),
                      child: MaterialButton(
                        height: 55,
                        minWidth: double.infinity,
                        onPressed: (){},
                        child: Text("Shop Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            ///Body GridView
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 10,
              itemBuilder: (context,index){
                return _itemOfGridView(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Container _itemOfGridView(int index) {
    return Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(15),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                    BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_${index%5}.png"),
                    fit: BoxFit.cover
                  )
                ),
                child: Icon(Icons.star_border,size: 35,color: Colors.yellow,)
              );
  }
}
