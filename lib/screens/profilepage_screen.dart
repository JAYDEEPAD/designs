import 'package:designs/screens/homepage_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const ProfilePage())));
}


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }

  /*void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xffD7D0FF),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            )
          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Need Help?',
                  style: TextStyle(fontSize: 24,color: Color(0xff151921),fontWeight: FontWeight.w900,),
                ),
                Text(
                  'Add your bottom sheet content here.',
                  style: TextStyle(fontSize: 16),
                ),
                //SizedBox(height: 10),
                CustomPaint()

              ],
            ),
          ),
        );
      },
    );
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          centerTitle: false,
          title: const Text(
          "PROFILES",
            style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w600, fontSize: 17,),
          ),
          backgroundColor: const Color(0xff1D212F),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )
          ),
          bottom: PreferredSize(
              preferredSize:const Size.fromHeight(10),
              child:  Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: const Color(0xffBFB5FF),
                                radius: 50,
                                child: Image.asset("assets/images/profile.png", width: 100, height: 100)),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Anni",
                                style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              Text(
                                "Anni@gmail.com",
                                style: TextStyle(color: Color(0xff828488), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Registered Since Dec 202X",
                                style: TextStyle(color: Color(0xff0BAB7C), fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icons/edit.png",
                                width: 30, // Adjust the percentage as needed
                                height: 30,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              height: 70,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xffEFEDE9))
                )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/order.png"),
                title: const Text("My Orders"
                  , style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/wishlist.png"),
                title: const Text("My Wishlist",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/prescription.png"),
                title: const Text("My Prescription",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/lab test.png"),
                title: const Text("Your Lab Test",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/doctor.png"),
                title: const Text("Doctor Consultation",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/payment.png"),
                title: const Text("Payment Methods",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/address.png"),
                title: const Text("Your Addresses",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/pin.png"),
                title: const Text("PIN Reminder",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffEFEDE9))
                  )
                /*border: Border.all(
                  color: Color(0xffEFEDE9)
                )*/
              ),
              child: ListTile(
                leading: Image.asset("assets/icons/invite.png"),
                title: const Text("Invites Friends",style: TextStyle(color: Color(0xff151921),fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffD7D0FF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Need Help?",style: TextStyle(fontSize: 24,color: Color(0xff151921),fontWeight: FontWeight.w900,),),
                      SizedBox(height: 10,),
                      CustomPaint(),
                      Text("About Us",style: TextStyle(fontSize: 24,color: Color(0xff151921),fontWeight: FontWeight.w900,),),
                      SizedBox(height: 10,),
                      CustomPaint(),
                      Text("Terms and Condition",style: TextStyle(fontSize: 24,color: Color(0xff151921),fontWeight: FontWeight.w900,),)
                    ],
                  ),
                ),
              ),
            )

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
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xff617C9D) // Color of the dotted line
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

