import 'package:designs/screens/screen_four.dart';
import 'package:device_preview/device_preview.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
      color: const Color(0xffF5F6FA),
      debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const ScreenFive())));
}


class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  int mycount=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350),
        child: AppBar(
          centerTitle: true,
          title: Text("Product", style: TextStyle(color: Color(0xff24293d), fontWeight: FontWeight.w700),),
          leading: Icon(Icons.arrow_back, color: Color(0xff26283A)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
            ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
              image: DecorationImage(image: AssetImage("assets/images/furniture _three.jpeg"),
              fit: BoxFit.fill,
              )
            ),
          )
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 2),
            child: Text(r"$115.00", style: TextStyle(fontSize: 27,color: Color(0xffFF6670)),),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("Minimal Chair ", style: TextStyle(fontSize: 20),),
              FivePointedStar(
                onChange: (count){
                  setState(() {
                    mycount=count;
                  });
                },
              ),
                Text(mycount.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,),
            child: Text("Color Option", style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 3),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xffFF6670),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color(0xffee9597),
                        width: 10,
                      )
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xffb9bacf),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color(0xffb9bacf),
                        width: 10,
                      )
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xff24293d),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color(0xff24293d),
                        width: 10,
                      )
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text("Description", style: TextStyle(color: Colors.black),),
          ),
          Container(
            height: 117,
            width: 100,
            color: Colors.cyan,
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 150,
              width: 200,
              //margin: EdgeInsets.only(top: 167),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(20)
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add, color: Colors.white,),
                  Text("Add to Cart", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),

        ],
      ),
      //bottomSheet:
    );
  }
}
