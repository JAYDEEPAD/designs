import 'package:designs/screens/screen_eleven.dart';
import 'package:flutter/material.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({super.key});

  @override
  State<ScreenTen> createState() => _ScreenTenState();
}

class _ScreenTenState extends State<ScreenTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: Stack(
           clipBehavior: Clip.none,
          children: [
            AppBar(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
              ),

              leading: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                    height: MediaQuery.of(context).size.height* 0.20,
                    width: MediaQuery.of(context).size.width * 0.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(child: Image.asset("assets/images/notification.png",))),
              ),
              centerTitle: true,
              title: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/person.png", height: 50, width: 50),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Lindsey Ainsley",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Image.asset("assets/images/more.png", height: 40),
              ),
            ),
                  ),
                  ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.125,
              left: 0,
              right:0 ,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width /0.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("8",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
                              Text("Rides",style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),)
                            ],
                          ),
                          Column(
                            children: [
                              Text("14\$",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
                              Text("Spent",style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),)
                            ],
                          ),
                          Column(
                            children: [
                              Text("1",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
                              Text("Tickets",style: TextStyle(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),)
                            ],
                          ),


                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.70,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text("Day", style: TextStyle(color: Colors.white,fontSize: 15),)),
                            Center(child: Text("Week", style: TextStyle(color: Colors.white,fontSize: 15),)),
                            Center(child: Text("Month", style: TextStyle(color: Colors.white,fontSize: 15),)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Saved routes",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.2, // Set a bounded height
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/taxi-cab.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Taxi", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/transport.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Trolley", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/tram.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Tram", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/car.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Car", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                              ),
                              child: Image.asset("assets/icons/train.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Subway", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/train.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Subway", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Image.asset("assets/icons/train.png",width: 10,height: 10,)),
                        ),
                      ),
                      Text("Subway", style: TextStyle(fontSize: 17,color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/icons/world-map.png",height:MediaQuery.of(context).size
                          .height * 0.15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Going to Paul by bike",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,size: 10,)),
                                ],
                              ),
                              Text("Winchster Road 29",style: TextStyle(color: Colors.white,fontSize: 15),),

                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,size: 10,)),
                                ],
                              ),
                              Text("Athlone St 37",style: TextStyle(color: Colors.white,fontSize: 15),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.bike_scooter,size: 25,color: Colors.black,),
                                    Text("26 min",style:TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("3.5 km", style: TextStyle(color: Colors.white,),)
                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                ),
              ),

            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Personal Propositions", style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w700),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.person),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenEleven()),
                    );
                  }, icon: Icon(Icons.account_balance_wallet_outlined),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.map_outlined),),
                ],
              ),
            ),
          )





        ],
      ),
    );
  }
}
