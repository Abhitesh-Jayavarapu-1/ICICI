import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:icici/password_page.dart';
import 'package:icici/verification_page.dart';

class KYCApp extends StatelessWidget {
  const KYCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Verification"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  const Color.fromARGB(255, 107, 15, 9),
                  Colors.red
                ])),
          ),
        ),
        body: Builder(
          builder: (BuildContext context) {
            if (kIsWeb) {
              return WebLayout();
            } else {
              return MobileLayout();
            }
          },
        ),
      ),
    );
  }
}

class MobileLayout extends StatefulWidget {
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWidgetMobile(
                            icon: Icons.account_balance_outlined,
                            heading: "Account Details"),
                        HorizontalLine(),
                        IconWidgetMobile(
                            icon: Icons.account_circle_outlined,
                            heading: "Personal Details"),
                        HorizontalLine(),
                        IconWidgetMobile(
                            icon: Icons.content_paste_search_outlined,
                            heading: "Review"),
                        HorizontalLine(),
                        Column(
                          children: [
                            Container(
                              width: 25,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 41, 56, 132),
                                // border: Border.all(color: Colors.orange),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.outlined_flag_outlined,
                                  size: 10,
                                  color:
                                      const Color.fromARGB(255, 141, 138, 138),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    8), // Add some space between icon and text
                            Text(
                              "KYC",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Expanded(child: Container()),
            Container(
              color: Colors.grey.shade300,
              width: double.maxFinite,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Identity Verification",
                  style: TextStyle(
                      color: Color.fromARGB(255, 41, 56, 132),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Please follow the instructions carefully and complete your ONLINE VERIFICATON.\nPlease click the \"Start\" button to complete identity verification.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  Text(
                    "The verification process is designed to confirm your identity and you will be redirected to ure third-party service provider for KYC Verification and Identification",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Test Test",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: double.minPositive,
                              horizontal: double.minPositive),
                          // minimumSize: Size(double.infinity, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Color.fromARGB(255, 41, 56, 132),
                        ),
                        child: Text(
                          'Start',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Alternatively, if you are unable to complete online identity verification or prefer in-person verification, you can skip the online identity verification by clicking \"Skip\" button and provide information by following the instruction and completing the steps on the next page to visit nearest ICICI Bank branch or Canada Post location for in-person identity verification.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: double.minPositive,
                              horizontal: double.minPositive),
                          // minimumSize: Size(double.infinity, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Color.fromARGB(255, 41, 56, 132),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded(child: Container()),
            Container(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Text(
                          "                 Back                 ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 41, 56, 132)),
                        ),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: double.minPositive,
                              vertical: double.minPositive),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        )),
                    FilledButton(
                      onPressed: () {},
                      child: Text(
                        "         Continue         ",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: FilledButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: double.minPositive,
                              horizontal: double.minPositive),
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WebLayout extends StatefulWidget {
  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Adjust the padding based on the screen width
          double padding = constraints.maxWidth > 600 ? 100 : 20;
          if (constraints.maxWidth < 600) {
            return MobileLayout();
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: [
                Expanded(
                  // flex: 0,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconWidget(
                                icon: Icons.account_balance_outlined,
                                heading: "Account Details"),
                            HorizontalLine(),
                            IconWidget(
                                icon: Icons.account_circle_outlined,
                                heading: "Personal Details"),
                            HorizontalLine(),
                            IconWidget(
                                icon: Icons.content_paste_search_outlined,
                                heading: "Review"),
                            HorizontalLine(),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 41, 56, 132),
                                    // border: Border.all(color: Colors.orange),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.outlined_flag_outlined,
                                      size: 30,
                                      color: const Color.fromARGB(
                                          255, 141, 138, 138),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some space between icon and text
                                Text(
                                  "KYC",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 249, 249, 249),
                            borderRadius: BorderRadius.circular(5),
                            border: Border(
                                bottom: BorderSide(
                                    color:
                                        Color.fromARGB(255, 231, 220, 220)))),
                        // margin: EdgeInsets.all(10),
                        child: Text(
                          "Identity Verification",
                          style: TextStyle(
                              color: Color.fromARGB(255, 41, 56, 132),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Please follow the instructions carefully and complete your ONLINE VERIFICATON.Please click the \"Start\" button to complete identity verification.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              "The verification process is designed to confirm your identity and you will be redirected to ure third-party service provider for KYC Verification and Identification",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Test Test",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyApp()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: double.minPositive,
                                        horizontal: double.minPositive),
                                    // minimumSize: Size(double.infinity, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 41, 56, 132),
                                  ),
                                  child: Text(
                                    'Start',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Alternatively, if you are unable to complete online identity verification or prefer in-person verification, you can skip the online identity verification by clicking \"Skip\" button and provide information by following the instruction and completing the steps on the next page to visit nearest ICICI Bank branch or Canada Post location for in-person identity verification.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: double.minPositive,
                                        horizontal: double.minPositive),
                                    // minimumSize: Size(double.infinity, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 41, 56, 132),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border(
                                  top: BorderSide(
                                      color:
                                          Color.fromARGB(255, 231, 220, 220)))),
                          // margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()),
                                    );
                                  },
                                  child: Text(
                                    "                 Back                 ",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 41, 56, 132)),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: double.minPositive,
                                        vertical: double.minPositive),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  )),
                              FilledButton(
                                onPressed: () {},
                                child: Text(
                                  "         Continue         ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: FilledButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: double.minPositive,
                                        horizontal: double.minPositive),
                                    backgroundColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String heading;

  const IconWidget({required this.icon, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.orange),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 30,
              color: Colors.orange,
            ),
          ),
        ),
        SizedBox(height: 8), // Add some space between icon and text
        Text(
          heading,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class IconWidgetMobile extends StatelessWidget {
  final IconData icon;
  final String heading;

  const IconWidgetMobile({required this.icon, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.orange),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 20,
              color: Colors.orange,
            ),
          ),
        ),
        SizedBox(height: 8), // Add some space between icon and text
        Text(
          heading,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 40,
      color: Colors.orange,
    );
  }
}
