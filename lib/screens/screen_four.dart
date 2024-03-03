import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    color: const Color(0xffF5F6FA),
      debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const ScreenFour())));
}

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F6FA),
        leading: const Icon(Icons.menu, color: Color(0xff26283A),),
        actions: [
          Container(
            height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff24293d),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: IconButton(onPressed: (){}, icon: const Icon(Icons.person,color: Color(0xffFFFFFF),)))),
          const SizedBox(width:10 ,)
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                      const Text("Search"),
                    ],
                  )),
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))
            ],
          ),
        ),

      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Explore", style: TextStyle(color: Color(0xff272A3A), fontSize: 25,fontWeight: FontWeight.w700),),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset("assets/images/futniterone.jpeg", height: 100,width: 100,),
                            ),
                             Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 2, ),
                                  child: Text("Item Name", style: TextStyle(color: Color(0xff272A3A),fontSize: 15,fontWeight: FontWeight.w700),),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30, top: 2),
                                  child: Text("Description", style: TextStyle(color: Color(0xffe8e6eb)),),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(r"$250.00",style: TextStyle(color: Color(0xff2a2a35)),),
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: (){}, icon: Icon(Icons.add, color: Color(0xff2a2a35),)),
                                )
                                //Icon(Icons.add, color: Color(0xffFFFFFF),),
                              ],
                            ),

                          ]

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset("assets/images/futniterone.jpeg", height: 100,width: 100,),
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30,top: 2, ),
                                    child: Text("Item Name", style: TextStyle(color: Color(0xff272A3A),fontSize: 15,fontWeight: FontWeight.w700),),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 2),
                                    child: Text("Description", style: TextStyle(color: Color(0xffe8e6eb)),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(r"$250.00",style: TextStyle(color: Color(0xff2a2a35)),),
                                  CircleAvatar(
                                    child: IconButton(
                                        onPressed: (){}, icon: Icon(Icons.add, color: Color(0xff2a2a35),)),
                                  )
                                  //Icon(Icons.add, color: Color(0xffFFFFFF),),
                                ],
                              )
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("assets/images/futniterone.jpeg", height: 100,width: 100,),
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30,top: 2, ),
                                    child: Text("Item Name", style: TextStyle(color: Color(0xff272A3A),fontSize: 15,fontWeight: FontWeight.w700),),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30, top: 2),
                                    child: Text("Description", style: TextStyle(color: Color(0xffe8e6eb)),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(r"$250.00",style: TextStyle(color: Color(0xff2a2a35)),),
                                  CircleAvatar(
                                    child: IconButton(
                                        onPressed: (){}, icon: Icon(Icons.add, color: Color(0xff2a2a35),)),
                                  ) //Icon(Icons.add, color: Color(0xffFFFFFF),),
                                ],
                              )
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
             const Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Best Selling", style: TextStyle(color: Color(0xff272A3A), fontSize: 25,fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: Image.asset('assets/images/furniture_two.jpeg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Minimal Chair", style: TextStyle(color:  Color(0xff272A3A)),),
                        Text("Lorem ipsum", style: TextStyle(color: Color(0xffe8e6eb)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(r"$125.00", style: TextStyle(color: Color(0xff2a2a35)),),
                            CircleAvatar(
                                child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward)))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
