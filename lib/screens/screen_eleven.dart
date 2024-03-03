import 'package:designs/screens/screen_twelve.dart';
import 'package:flutter/material.dart';



class ScreenEleven extends StatefulWidget {
  const ScreenEleven({super.key});

  @override
  State<ScreenEleven> createState() => _ScreenElevenState();
}
class _ScreenElevenState extends State<ScreenEleven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height /1.5),
          child: AppBar(
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
            title: Text("Transport Card"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another screen using Navigator
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenEleven()),
                    );
                  },
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
              )

            ],
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 150, left: 30,right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07 ,
                     /* width: MediaQuery.of(context).size.width * 0.05,*/
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Payments"),
                          Text("Card"),
                          Text("Tickets")
                        ],
                      ),
                    ),
                  ),
                 /* SizedBox(height: 10,),*/
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                        width: MediaQuery.of(context).size.width / 0.35,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("Public Transport",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                                    Text("9543 3078 3613 9741 819", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),
                                  ],
                                ),

                                Column(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.cached,color: Colors.grey, size: 30,)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("\$87.50",style: TextStyle(color:Colors.white,fontSize: 15),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size . height *0.10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("All city Zones",style: TextStyle(fontSize: 15, color: Colors.white),),
                              Text("Exp. 09/11/2021 ",style: TextStyle(fontSize: 15, color: Colors.white),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text("Refill", style: TextStyle(color: Colors.white,fontSize: 15,),
                                          ),
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width /0.35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("History", style: TextStyle(color: Colors.black,fontSize: 16,),),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                          ),
                          child: Center(child: Text("sort by Date ",style: TextStyle(color: Colors.white,fontSize: 14,),))),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/delivery-truck.png",))),
                  title: Text("Mini Cabs West Bridge ",style: TextStyle(color: Colors.black,fontSize: 16),),
                  subtitle: Text("13 Nov , 1:24 PMR", style: TextStyle(color: Colors.grey),),
                  trailing: Text("\$14", style: TextStyle(color: Colors.black,fontSize: 16),),
                ),
                ListTile(
                  leading: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/delivery-truck.png",))),
                  title: Text("Northolt Tube Station ",style: TextStyle(color: Colors.black,fontSize: 16),),
                  subtitle: Text("13 Nov , 1:24 PM", style: TextStyle(color: Colors.grey),),
                  trailing: Text("\$4.90", style: TextStyle(color: Colors.black,fontSize: 16),),
                ),
                ListTile(
                  leading: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/delivery-truck.png",))),
                  title: Text("Northolt Tube Station ",style: TextStyle(color: Colors.black,fontSize: 16),),
                  subtitle: Text("13 Nov , 1:24 PM", style: TextStyle(color: Colors.grey),),
                  trailing: Text("\$4.90", style: TextStyle(color: Colors.black,fontSize: 16),),
                ),
                ListTile(
                  leading: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/delivery-truck.png",))),
                  title: Text("Northolt Tube Station ",style: TextStyle(color: Colors.black,fontSize: 16),),
                  subtitle: Text("13 Nov , 1:24 PM", style: TextStyle(color: Colors.grey),),
                  trailing: Text("\$4.90", style: TextStyle(color: Colors.black,fontSize: 16),),
                ),
              ],
            ),
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet_outlined),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenTweleve()),
                    );
                  }, icon: Icon(Icons.map_outlined),),
                ],
              ),
            ),
          ),

        ],
      ),
    ) ;
  }
}
