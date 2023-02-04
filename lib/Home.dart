import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'my_colors.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map(
          (e) => Container(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? Colors.white : Colors.black38),
                backgroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? MyColors.myBlue : Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
            onPressed: () {},
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: MyColors.grayBackground,
                    child: Image.asset(
                      e.image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(e.title, style: const TextStyle(fontSize: 14)),
              ],
            )),
      ),
    )
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: buildCategories(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: "Category",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(5.0),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: Data.generateProducts().map((e) => Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                elevation: 0,
                child: InkWell(
                  onTap: (){
                   // Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: DetailScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(e.image,height: 90,width: double.infinity,),
                        const SizedBox(height: 5,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: e.type,
                              style: const TextStyle(
                                  color: MyColors.myBlue,
                                  fontSize: 16.0)),
                        ),
                        const SizedBox(height: 5,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: e.title,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0)),
                        ),
                        const SizedBox(height: 5,),
                       // / SingleChildScrollView(
                       //    scrollDirection: Axis.vertical,
                       //    child:
                        Row(
                          children: [
                            const Spacer(),
                            ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        MyColors.myBlack),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20)))),
                                onPressed: () {},
                                child: Text("  try on  ".toUpperCase(),
                                    style: const TextStyle(fontSize: 14))),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),).toList(),
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blue,
    animationDuration: Duration(milliseconds: 300 ),
          onTap: (index){
      print(index);
    },
          items: [
            Icon(Icons.home),
            Icon(Icons.favorite_border_outlined),
            Icon(Icons.settings),
    ],

    ),
    );
  }
}