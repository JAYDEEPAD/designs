import 'package:designs/screens/screen_thirteen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ScreenFourteen(),));
}

class ScreenFourteen extends StatefulWidget {
  const ScreenFourteen({super.key});

  @override
  State<ScreenFourteen> createState() => _ScreenFourteenState();
}

class _ScreenFourteenState extends State<ScreenFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.notes, color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenThirteen()));
          }, icon: Icon(Icons.notifications,color: Colors.grey,)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello", style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),),
                Text("Mr.Anthony Burke", style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width *0.10,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/dropbox.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.white,)))),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.filter,color: Colors.white,)))),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.dns_rounded,color: Colors.white,))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        Text("Dropbox",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize:30 ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("65Gb", style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("100Gb", style: TextStyle(color: Colors.white,fontSize: 15),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width *0.10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 5),
                    child: Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            child: Image.asset("assets/icons/google-drive.png")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.white,)))),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.filter,color: Colors.black,)))),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.dns_rounded,color: Colors.black,))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        Text("Google Drive",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize:30 ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("65Gb", style: TextStyle(color: Colors.black,fontSize: 15),),
                        Text("100Gb", style: TextStyle(color: Colors.black,fontSize: 15),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Co-owners",style: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.w600),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                      Icon(Icons.account_circle_rounded,size: 50,),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Last files:",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700,fontSize: 20),),


              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  //width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.note_add,size: 50,)),
                    title: Row(
                      children: [
                        Text("Brandbook",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),),
                        Text(".PDF",style: TextStyle(color: Colors.black12,fontSize: 20,fontWeight: FontWeight.w700,),),
                      ],
                    ),
                    subtitle: Text("DropBox/Projects/E:/BrandBook",style: TextStyle(color: Colors.black12,fontSize: 17,fontWeight: FontWeight.w700,),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  //width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.note_add,size: 50,)),
                    title: Row(
                      children: [
                        Text("Brandbook",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),),
                        Text(".PDF",style: TextStyle(color: Colors.black12,fontSize: 20,fontWeight: FontWeight.w700,),),
                      ],
                    ),
                    subtitle: Text("DropBox/Projects/E:/BrandBook",style: TextStyle(color: Colors.black12,fontSize: 17,fontWeight: FontWeight.w700,),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  //width: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.note_add,size: 50,)),
                    title: Row(
                      children: [
                        Text("Brandbook",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),),
                        Text(".PDF",style: TextStyle(color: Colors.black12,fontSize: 20,fontWeight: FontWeight.w700,),),
                      ],
                    ),
                    subtitle: Text("DropBox/Projects/E:/BrandBook",style: TextStyle(color: Colors.black12,fontSize: 17,fontWeight: FontWeight.w700,),),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
