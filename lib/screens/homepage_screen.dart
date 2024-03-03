import 'package:designs/screens/offerpage_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DevicePreview(
        enabled: true,
        builder: (context)=>const HomePage()),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final int _currentPosition = 2;






  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferPage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset("assets/icons/user.png", height: 40),
              title: const Text(
                "Medicine",
                style: TextStyle(
                    color: Color(0xff151921), fontWeight: FontWeight.w600),
              ),
              trailing: Image.asset("assets/icons/cart.png", height: 20),
            ),
            Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(
                color: const Color(0xffF3F2E9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Search Medicine & Health Products",
                    style: TextStyle(color: Color(0xff818286)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xff878B91),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color(0xffD7D0FF),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upload Prescription',
                      style: TextStyle(color: Color(0xff151921), fontSize: 20),
                    ),
                    const Text(
                      'Upload a Prescription and Tell Us what \nyou Need. We do the Rest.!',
                      style: TextStyle(color: Color(0xff151921), fontSize: 14),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Flat 25% OFF \nON MEDICINES",
                            style: TextStyle(
                                color: Color(0xff151921),
                                fontWeight: FontWeight.w700),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff5F48E6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  )),
                              child: const Text("ORDER NOW",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color(0xffC7F4C2),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const RotatedBox(
                            quarterTurns: 3, // Rotating -90 degrees
                            child: Text("UPTO"),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "80%",
                                  style: TextStyle(
                                    color: Color(0xff161531),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 41,
                                  ),
                                ),
                                TextSpan(
                                  text: "offers*",
                                  style: TextStyle(
                                    color: Color(0xff161531),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text("On Health Products",
                            style: TextStyle(
                                color: Color(0xff161531),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0BAB7C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: const Text("Shop Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w800)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Homeopathy, Ayurvedic,\n Personal Care & More",
                        style: TextStyle(
                            color: Color(0xff151921),
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/sirf.png",
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        // Adjust the multiplier to increase/decrease the image size
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 4,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.grey[300]!,
                  activeColor: Colors.black,
                ),
                position: _currentPosition,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Categories",
                    style: TextStyle(
                        color: Color(0xff151921),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.61),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Row(
                      children: [
                        Text(
                          "SEE ALL",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff151921),
                              fontWeight: FontWeight.w700,
                              fontSize: 14.42),
                        ),
                        Icon(Icons.keyboard_arrow_right_sharp,
                            color: Color(0xff151921)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              childAspectRatio: 0.78,
              crossAxisCount: 3,
             // mainAxisSpacing: 40,
             // crossAxisSpacing: 15,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/soda.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5,),
                    const Text("Nutritional \nDrinks",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921), fontSize:14, fontWeight: FontWeight.w600 ),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/ayurveda.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5),
                    const Text("Ayurveda",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921),fontSize:14, fontWeight: FontWeight.w600),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/vitamin.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5),
                    const Text("Vitamins &\n Supplement",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921),fontSize:14, fontWeight: FontWeight.w600),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/mobile.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5,width: 5,),
                    const Text("Healthcare Devices",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921), fontSize:14, fontWeight: FontWeight.w600 ),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/doctor.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5),
                    const Text("Homeopathy",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921),fontSize:14, fontWeight: FontWeight.w600),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFEDE9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/diabities.png", height: 50, width: 50,),
                    ),
                    const SizedBox(height: 5),
                    const Text("Diabetes Care",textAlign:TextAlign.center,style: TextStyle(color: Color(0xff151921),fontSize:14, fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffFDFBF7),
        selectedLabelStyle: const TextStyle(color: Color(0xff151921)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/vectors/home.png'),
              color: Color(0xffBFB5FF),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/vectors/order.png'),
              color: Color(0xffBFB5FF),
            ),
            label: 'ORDER',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/vectors/labtest.png'),
              color: Color(0xffBFB5FF),
            ),
            label: 'LAB TEST',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/vectors/offers.png'),
              color: Color(0xffBFB5FF),
            ),
            label: 'OFFERS',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/vectors/profile.png'),
              color: Color(0xffBFB5FF),
            ),
            label: 'PROFILE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff151921),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
      ),
    );
  }

}
