import 'package:flutter/material.dart';
import 'package:icici/signup_tab.dart';
import 'package:icici/welcome_page.dart';

class WebLayout extends StatefulWidget {
  @override
  _WebLayoutState createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  bool switchValue = false;

  double calculateContainerHeight(double screenWidth) {
    if (screenWidth > 1200) {
      return switchValue ? 600.0 : 500.0;
    } else if (screenWidth > 600) {
      return switchValue ? 600.0 : 500.0;
    } else {
      return switchValue ? 600.0 : 500.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).size.height <= 350) {
    //   return MobileLayout();
    // }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/buildings.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Web layout content

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 400,
              height: calculateContainerHeight(
                  MediaQuery.of(context).size.width), // Pass the screen width
              margin: EdgeInsets.only(left: 150, top: 30, bottom: 20),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    // Container for TabBar
                    Align(
                        // alignment: Alignment.center,
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: 80,
                            // opacity: AlwaysStoppedAnimation(0.6),
                            width: 80,
                            image: AssetImage("assets/images/logo.png")),
                      ],
                    )),
                    Container(
                      child: TabBar(
                        labelColor: Colors.deepOrange,
                        indicatorColor: Colors.deepOrange,
                        indicatorWeight: 2.0,
                        tabs: [
                          Tab(
                            text: 'ALREADY REGISTERED',
                          ),
                          Tab(
                            text: 'I AM NEW HERE',
                          ),
                        ],
                      ),
                    ),

                    // TabBarView
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Login Tab
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Form(
                                child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Enter Your Details Below',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        icon: Icon(Icons.person_sharp),
                                        border: InputBorder.none,
                                        labelText: 'Email'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        icon: Icon(Icons.key_rounded),
                                        border: InputBorder.none,
                                        labelText: '......'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WelcomePage()),
                                    );
                                  },
                                  textColor: Colors.white,
                                  minWidth: 350,
                                  height: 45,
                                  color: Colors.indigo[900],
                                  child: const Text('Login'),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Forgot()));
                                    },
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.underline),
                                    ))
                              ],
                            )),
                          ),

                          // SignUp Tab
                          SignupTab(
                            switchValue: switchValue,
                            onSwitchChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                          ),
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
    );
  }
}

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  bool switchValue = false;

  double calculateContainerHeight(double screenWidth) {
    if (screenWidth > 1200) {
      return switchValue ? 600.0 : 500.0;
    } else if (screenWidth > 600) {
      return switchValue ? 600.0 : 500.0;
    } else {
      return switchValue ? 600.0 : 500.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/buildings.jpg"),
                      fit: BoxFit.cover)),
              child: null),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 400,
              height:
                  calculateContainerHeight(MediaQuery.of(context).size.width),
              margin: EdgeInsets.only(left: 150, top: 30, bottom: 20),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Align(
                        // alignment: Alignment.center,
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: 80,
                            // opacity: AlwaysStoppedAnimation(0.6),
                            width: 80,
                            image: AssetImage("assets/images/logo.png")),
                      ],
                    )),
                    Container(
                      // color: Colors.white,
                      child: const TabBar(
                        tabs: [
                          Tab(text: 'ALREADY REGISTERED'),
                          Tab(text: 'I AM NEW HERE')
                        ],
                        labelColor: Colors.orange,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.orange,
                        indicatorWeight: 4.0,
                        labelStyle: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w400),
                        unselectedLabelStyle: TextStyle(fontSize: 14.0),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Form(
                              child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Forgot Password',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      icon: Icon(Icons.person_sharp),
                                      border: InputBorder.none,
                                      labelText: 'Email'),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                textColor: Colors.white,
                                minWidth: 350,
                                height: 45,
                                color: Colors.indigo[900],
                                child: const Text('Continue'),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Image.network(
                                  'https://th.bing.com/th/id/OIP.4PvuBIJEiXqYBCQqW4x4MgAAAA?rs=1&pid=ImgDetMain'),
                            ],
                          )),
                        ),
                        SignupTab(
                          switchValue: switchValue,
                          onSwitchChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
