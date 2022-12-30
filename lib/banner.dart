import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/screens/details/detail_page.dart';
import 'package:slacks_test/screens/details/detail_page_4.dart';
import 'package:slacks_test/screens/details/detail_page_7.dart';
import 'package:slacks_test/screens/home-screen.dart';
class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      CarouselSlider(
      items: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/banner_1.png",),//fit: BoxFit.cover
    )),
    ),
    Container(
      height: 200,
    width: 600,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/banner_2.png"),//fit: BoxFit.cover
    )),
    )
    ],
    options: CarouselOptions(
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 2000),
    viewportFraction: 0.8,
    )),
    Padding(padding: EdgeInsets.all(10),),
            Column(
              children: [
                Container(height: 200,
                 width: 800,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black)
                 ),
                  child: Text("OFFERS", textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic)),
                ),
                SizedBox(height: 19,),
                Container(height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                ),
                CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/banner_1.png"),
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/banner_2.png"),
                            )),
                      )
                    ],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      viewportFraction: 0.8,
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => DetailPage()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/baggy.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_7()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/d.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_4()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/black.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          child: Text("Veiw more"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]
      )
    );
  }
}
