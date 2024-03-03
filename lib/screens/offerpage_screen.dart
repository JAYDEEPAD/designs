import 'package:designs/screens/profilepage_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const OfferPage())));
}

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0),
        child: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          centerTitle: false,
          title: const Text(
            "OFFERS",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/cart.png",
                  color: Colors.white,
                )),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 65,
                    decoration: BoxDecoration(
                      color: const Color(0xff0BAB7C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                          "ALL",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 85,
                    decoration: BoxDecoration(
                      color: const Color(0xff1D212D),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                        child: Text(
                          "PAYMENT",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 85,
                    decoration: BoxDecoration(
                      color: const Color(0xff1D212D),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                        child: Text(
                          "MEDICINE",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 115,
                    decoration: BoxDecoration(
                      color: const Color(0xff1D212D),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                        child: Text(
                          "DIAGNOSTIC",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        )),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: const Color(0xff1D212D),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25))),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/images/fifty.png", width: 100, height: 100),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FLAT 50% off* upto 50\n Surprice Cashback",
                                      style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                    Text(
                                      "Only on Healthcare Products\n on Orders above 100",
                                      style: TextStyle(color: Color(0xff828488), fontSize: 14, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset("assets/icons/arrow.png",
                                      width: 30, // Adjust the percentage as needed
                                      height: 30,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(height:20),
                          CustomPaint(
                            painter: DottedLinePainter(), // Custom painter for the dotted line
                            child: Container(
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height:20,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Code: BCH12",
                                style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                              Text(
                                "Copy Code",
                                style: TextStyle(color: Color(0xff0BAB7C), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/images/thirty.png",width: 100,height: 100),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("FLAT 30% off* upto 450\n Cashback", style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w700,fontSize: 15),),
                                      Text("Big Bachat only on Tuesdays", style: TextStyle(color: Color(0xff828488), fontSize: 14,fontWeight: FontWeight.w400),),
                                    ],
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/arrow.png", width: 30,height: 30,)))
                              ],
                            ),
                          ),
                          const SizedBox(height:20),
                          CustomPaint(
                            painter: DottedLinePainter(), // Custom painter for the dotted line
                            child: Container(
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height:20,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Code: BCH12",
                                style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                              Text(
                                "Copy Code",
                                style: TextStyle(color: Color(0xff0BAB7C), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/images/sixty.png",width: 100,height: 100),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mega Sale Flat 60% Off*", style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w700,fontSize: 15),),
                                    Text("FLAT 5% OFF* on Purchase\n of Diabetic Cardic Products", style: TextStyle(color: Color(0xff828488), fontSize: 14,fontWeight: FontWeight.w400),),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/arrow.png", width: 30,height: 30,))),
                              ),
                            ],
                          ),
                           const SizedBox(height:20),
                          CustomPaint(
                            painter: DottedLinePainter(), // Custom painter for the dotted line
                            child: Container(
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height:20,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Code: BCH12",
                                style: TextStyle(color: Color(0xff151921), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                              Text(
                                "Copy Code",
                                style: TextStyle(color: Color(0xff0BAB7C), fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

          /* Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.50,
              child: Card(
                color: Color(0xffFBFAF3),
                child: ,
              ),
            )*/
        ],
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

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xffEFEDE9) // Color of the dotted line
      ..strokeWidth = 1 // Width of the dotted line
      ..style = PaintingStyle.stroke;

    const double dashWidth = 5;
    const double dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
