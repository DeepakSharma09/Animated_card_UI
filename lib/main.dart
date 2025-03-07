import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:faker/faker.dart' as Faker;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
      theme: ThemeData(
        textTheme:
            GoogleFonts.poppinsTextTheme(), // Set Poppins as default font
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isUnfrozen = false;

  String generateCardNumber() {
    return "${Faker.faker.randomGenerator.integer(9999, min: 1000)}\n"
        "${Faker.faker.randomGenerator.integer(9999, min: 1000)}\n"
        "${Faker.faker.randomGenerator.integer(9999, min: 1000)}\n"
        "${Faker.faker.randomGenerator.integer(9999, min: 1000)}\n";
  }

  String generateExpiryDate() {
    int month = Faker.faker.randomGenerator.integer(12, min: 1);
    int year =
        Faker.faker.randomGenerator.integer(30, min: 25); // Year from 2024+
    return "${month.toString().padLeft(2, '0')}/$year";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Select Payment Mode',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Choose your preferred payment method to make payment.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      _buildPaymentButton("pay", Colors.white, Colors.white),
                      const SizedBox(width: 10),
                      _buildPaymentButton(
                          "card", const Color(0xFFA90808), Color(0xFFA90808)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'YOUR DIGITAL DEBIT CARD',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 320,
                        child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            child: isUnfrozen
                                ? Stack(
                                    children: [
                                      Opacity(
                                        opacity: 0.35, // Set opacity to 20%
                                        child: Container(
                                          width: 200,
                                          height: 320,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/img_2.png'), // Change to your image path
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 200,
                                        height: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'assets/yolo.png',
                                                  height: 50,
                                                  width: 50,
                                                ),
                                                Image.asset(
                                                  'assets/yes.png',
                                                  height: 50,
                                                  width: 50,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Text(
                                                  generateCardNumber(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    letterSpacing: 2,
                                                  ),
                                                ),
                                                SizedBox(width: 40),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "expiry",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          generateExpiryDate(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "cvv",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "* * *",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 18),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Icon(
                                                                Icons
                                                                    .visibility_off,
                                                                color: Color(
                                                                    0xFFA90808)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 1),
                                            Row(
                                              children: [
                                                Icon(Icons.copy,
                                                    color: Color(0xFFA90808)),
                                                SizedBox(width: 5),
                                                Text(
                                                  "copy details",
                                                  style: TextStyle(
                                                      color: Color(0xFFA90808),
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                'assets/rupay.png',
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    width: 200,
                                    height: 320,
                                    key: const ValueKey(
                                        1), // Required for AnimatedSwitcher
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/img_2.png',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isUnfrozen = !isUnfrozen;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: isUnfrozen
                                      ? Colors.white
                                      : const Color(0xFFA90808),
                                ),
                                const CircleAvatar(
                                  radius: 29.8,
                                  backgroundColor: Colors.black,
                                ),
                                Icon(
                                  LucideIcons.snowflake,
                                  color: isUnfrozen
                                      ? Colors.white
                                      : const Color(0xFFA90808),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            isUnfrozen ? 'Freeze' : 'Unfreeze',
                            style: TextStyle(
                              color: isUnfrozen
                                  ? Colors.white
                                  : const Color(0xFFA90808),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomPaint(
              size: const Size(double.infinity, 145),
              painter: NavBarWhitePainter()),
          CustomPaint(
              size: const Size(double.infinity, 140), painter: NavBarPainter()),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navItem(icon: LucideIcons.home, label: "Home"),
                _centralNavItem(icon: LucideIcons.scan, label: "Yolo Pay"),
                _navItem(icon: LucideIcons.percent, label: "Ginie"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Creates a styled payment button
  Widget _buildPaymentButton(String text, Color bgColor, Color textColor) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Positioned(
          top: 0.5,
          left: 1,
          right: 1,
          child: Container(
            height: 49.5,
            width: 99.5,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _navItem({required IconData icon, required String label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Colors.black, Colors.grey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black,
              child: Icon(icon, color: Colors.grey, size: 28),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }

  Widget _centralNavItem({required IconData icon, required String label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
            child: Image.asset(
              'assets/img_4.png',
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class NavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.black;
    Path path = Path()
      ..moveTo(0, size.height * 0.4)
      ..quadraticBezierTo(size.width * 0.5, -50, size.width, size.height * 0.4)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class NavBarWhitePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white;
    Path path = Path()
      ..moveTo(0, size.height * 0.42)
      ..quadraticBezierTo(size.width * 0.5, -50, size.width, size.height * 0.42)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
