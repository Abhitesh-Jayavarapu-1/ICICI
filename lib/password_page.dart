import 'package:flutter/material.dart';
import 'package:icici/kyc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ICICI MOBILE APP'),
      // ),
      // appBar: AppBar(
      //   title: Text('ICICI MOBILE APP'),
      // ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // Determine the layout based on the screen size
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return MobileLayout();
          } else {
            return WebLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatefulWidget {
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  bool showWarning = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 171, 78, 71),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Handle menu button press
                  },
                ),
                // IconButton(
                //   icon: Icon(Icons.arrow_back),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ],
            ),
            Text(
              'Personal Details',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Handle cart button press
                  },
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4.0), // Adjust padding as needed
                    margin:
                        EdgeInsets.only(right: 4.0), // Adjust margin as needed
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      '2', // Replace this with the actual count from your cart
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0, // Adjust the font size as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: const Color.fromARGB(255, 171, 78, 71),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              showWarning
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Set your password to access your account online or through i-mobile app',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true, // Enable word wrap
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_upward),
                            onPressed: () {
                              setState(() {
                                showWarning = false;
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  : IconButton(
                      icon: Icon(Icons.arrow_downward),
                      onPressed: () {
                        setState(() {
                          showWarning = true;
                        });
                      },
                    ),
              SizedBox(height: 10),
              Transform.translate(
                  offset: Offset(-145.0, 00),
                  child: (Text('Password', style: TextStyle(fontSize: 18)))),
              InputBox(
                controller: passwordController,
                icon: Icons.lock,
                hintText: 'Enter your password',
                isPassword: true,
              ),
              SizedBox(height: 10),
              Text('Password Requirements'),
              SizedBox(height: 10),
              BulletList([
                'Must contain an uppercase character',
                'Must contain a lowercase character',
                'Must contain a numeric character',
                'Must contain a non-alphanumeric character',
                'Must be at least 8 characters',
                'Cannot contain an email address'
              ]),
              SizedBox(height: 10),
              Transform.translate(
                  offset: Offset(-110.0, 00),
                  child: (Text('Confirm Password',
                      style: TextStyle(fontSize: 18)))),
              InputBox(
                controller: reEnterPasswordController,
                icon: Icons.lock,
                hintText: 'Confirm your password',
                isPassword: true,
              ),
              SizedBox(height: 30),
              Text(
                'Please allow one business day for the Internet Banking to be set up after your account has been activated. If you are having trouble accessing your online banking, you can always reset your password',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  // Handle back button press
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Back'),
              ),
            ),
            Container(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KYCApp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Continue', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hintText;
  final bool isPassword;

  InputBox({
    required this.controller,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      obscureText: isPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(icon),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;
  final double iconSize;

  BulletList(this.items, {this.iconSize = 24});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) => BulletListItem(item, iconSize)).toList(),
    );
  }
}

class BulletListItem extends StatelessWidget {
  final String item;
  final double iconSize;

  BulletListItem(this.item, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: iconSize,
            height: iconSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red),
            ),
            child: Center(
              child: Icon(
                Icons.close,
                size: iconSize * 0.6,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              item,
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class WebLayout extends StatefulWidget {
  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  String _formatLastSeen(DateTime lastSeen) {
    // Format the last seen time according to your needs
    String formattedDate = "${lastSeen.day}/${lastSeen.month}/${lastSeen.year}";
    String formattedTime = "${lastSeen.hour}:${lastSeen.minute}";
    return "$formattedDate at $formattedTime";
  }

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardWidth = screenWidth * 0.8; // 70% of viewing width
    double cardHeight = screenHeight * 0.7;
    // double cardWidth = screenWidth; // 70% of viewing width

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Menu Button Clicked');
              },
            ),
            Text('Personal Details'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://placekitten.com/100/100'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Transform.translate(
                  offset: Offset(-130.0, 0.0), child: (Text('John Doe'))),
              Text(
                  'Last seen ${_formatLastSeen(DateTime.now().subtract(Duration(hours: 3)))}'),
            ],
          ),
          SizedBox(width: 10),
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  print('Cart Button Clicked');
                },
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: cardWidth,
                height: cardHeight,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Set your password to access your account online or through the i-mobile app',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _passwordController,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16.0),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _confirmPasswordController,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Confirm Password',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24.0),
                                Transform.translate(
                                  offset: Offset(-510.0, 0.0),
                                  child: Text('Password Requirements'),
                                ),
                                SizedBox(height: 10),
                                BulletList([
                                  'Must contain an uppercase character',
                                  'Must contain a lowercase character',
                                  'Must contain a numeric character',
                                  'Must contain a non-alphanumeric character',
                                  'Must be at least 8 characters',
                                  'Cannot contain an email address'
                                ]),
                                SizedBox(height: 20.0),
                                Text(
                                  'Please allow one business day for internet banking to be set up after your account has been activated. If you are having trouble accessing your online banking, you can always reset your password',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Transform.translate(
              offset: Offset(0.0, -50.0),
              child: (Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        print('Back Button Clicked');
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Back', style: TextStyle(fontSize: 16.0)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Continue Button Clicked');
                        print('Password: ${_passwordController.text}');
                        print(
                            'Confirm Password: ${_confirmPasswordController.text}');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KYCApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 27, 62, 234),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Continue',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ))),
        ],
      ),
    );
  }
}
