import 'package:designs/screens/screen_fourteen.dart';
import 'package:flutter/material.dart';


class ScreenThirteen extends StatefulWidget {
  const ScreenThirteen({super.key});

  @override
  State<ScreenThirteen> createState() => _ScreenThirteenState();
}

class _ScreenThirteenState extends State<ScreenThirteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ScreenFourteen()));
          }, icon: Icon(Icons.notes,color: Colors.white,)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications), color: Colors.white,)
          ],
          bottom: PreferredSize(
              preferredSize: Size.infinite,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
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
                      ],
                    ),
                    SizedBox(width: 10), // Added space between the two columns
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Dropbox",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 5), // Added space between the two texts
                            Text(
                              "Cloud",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5), // Added space between the two rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "65Gb",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 20), // Added space between the two texts
                            Text(
                              "100Gb",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.70,
        width: MediaQuery.of(context).size.width / 0.35,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15)
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Folders",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height * 0.06,
                                    child: Image.asset("assets/images/folder.png",)),
                                CircleAvatar(child: Icon(Icons.person_rounded,size: 20,))
                              ],
                            ),
                            ListTile(
                              title: Text("My Devlopments"),
                              subtitle: Text("Created : 18.02.2019",),
                            )



                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height * 0.06,
                                    child: Image.asset("assets/images/folder.png",)),
                                CircleAvatar(child: Icon(Icons.person_rounded,size: 20,))
                              ],
                            ),
                            ListTile(
                              title: Text("My Devlopments"),
                              subtitle: Text("Created : 18.02.2019",),
                            )



                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height * 0.06,
                                    child: Image.asset("assets/images/folder.png",)),
                                CircleAvatar(child: Icon(Icons.person_rounded,size: 20,))
                              ],
                            ),
                            ListTile(
                              title: Text("My Devlopments"),
                              subtitle: Text("Created : 18.02.2019",),
                            )



                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Last files:",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700,fontSize: 20),),
                  Text("\tGoogle Disk ",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      trailing: Icon(Icons.wifi_protected_setup,size: 50,),
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
                      trailing: Icon(Icons.wifi_protected_setup,size: 50,),
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
                      trailing: Icon(Icons.wifi_protected_setup,size: 50,),
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
                      trailing: Icon(Icons.wifi_protected_setup,size: 50,),
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
                      trailing: Icon(Icons.wifi_protected_setup,size: 50,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
