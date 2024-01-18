import 'package:flutter/material.dart';
import 'package:icici/signup_tab.dart';
import 'package:icici/welcome_page.dart';

class MobileLayout extends StatefulWidget {
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  bool switchValue = false;

  double calculateContainerHeight() {
    if (switchValue) {
      return 600.0;
    } else {
      return 500.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/buildings.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Mobile layout content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(20),
                height: calculateContainerHeight(),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      // Container for TabBar
                      Container(
                        child: TabBar(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                            builder: (context) =>
                                                WelcomePage()),
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
                                            decoration:
                                                TextDecoration.underline),
                                      )),
                                  Image.network(
                                      'https://th.bing.com/th/id/OIP.4PvuBIJEiXqYBCQqW4x4MgAAAA?rs=1&pid=ImgDetMain'),
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
            ],
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
          Positioned(
            left: 100,
            top: 100,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 390,
                  width: 400,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(30),
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
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
                            Form(
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
                                  height: 30,
                                ),
                              ],
                            )),
                            const Center(child: Text('Data'))
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
              left: 200,
              top: 80,
              child: Row(
                children: [
                  Image(
                      height: 80,
                      opacity: AlwaysStoppedAnimation(0.6),
                      width: 80,
                      image: AssetImage("assets/images/leaf.jpg")),
                  Text(
                    'Hello\nCanada',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
