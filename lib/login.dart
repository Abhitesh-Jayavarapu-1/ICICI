import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Login(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            top: 50,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 500,
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
                                  onPressed: () {},
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
              top: 30,
              child: Row(
                children: [
                  Image(
                      height: 80,
                      opacity: AlwaysStoppedAnimation(0.6),
                      width: 80,
                      image: AssetImage("assets/images/logo.png")),
                  // Image.asset('assets/images/logo.png')
                  // Text(
                  //   'Hello\nCanada',
                  //   style: TextStyle(
                  //       color: Colors.indigo,
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.w900),
                  // )
                ],
              )),
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
                                  onPressed: () {},
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
