import 'package:flutter/material.dart';
import 'package:icici/AccountDetails.dart';
import 'package:icici/mailboxweb.dart';
import 'package:icici/main.dart';
import 'package:icici/track_status.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late ImagePicker _imagePicker;
  late String lastLoginTime = "Last Login: 10:30 AM";

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      print("Image picked: ${pickedFile.path}");
    } else {
      print("Image picker canceled");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 47, 32, 32),
                  Color.fromARGB(255, 255, 0, 0),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          title: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Center(
                  child: Text("Welcome User!", style: TextStyle(fontSize: 24)),
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child:
                          Text("Welcome User!", style: TextStyle(fontSize: 24)),
                    ),
                    Spacer(),
                    Text(lastLoginTime, style: TextStyle(fontSize: 14)),
                  ],
                );
              }
            },
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background_image.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.7),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.camera),
                        onPressed: _pickImage,
                        tooltip: "Upload",
                      ),
                      SizedBox(height: 8),
                      Text("Upload Photo", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.description),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountDetails()),
                              );
                            },
                            tooltip: "Apply Now",
                          ),
                          SizedBox(height: 8),
                          Text("Apply Now", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.email),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => mailboxweb()),
                              );
                            },
                            tooltip: "Email",
                          ),
                          SizedBox(height: 8),
                          Text("Secure Email", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.track_changes),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrackStatus()),
                              );
                            },
                            tooltip: "Track Status",
                          ),
                          SizedBox(height: 8),
                          Text("Track Status", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.logout,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainApp()),
                              );
                            },
                            tooltip: "Logout",
                          ),
                          SizedBox(height: 8),
                          Text("Logout", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  ExpansionPanelList(
                    elevation: 1,
                    expandedHeaderPadding: EdgeInsets.zero,
                    expansionCallback: (int index, bool isExpanded) {},
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text("Others"),
                          );
                        },
                        body: Column(
                          children: [
                            ExpansionTile(
                              title: Text("Get in Touch"),
                              children: [
                                ListTile(
                                  title: Text("Contact us"),
                                ),
                              ],
                            ),
                            ExpansionTile(
                              title: Text("Privacy"),
                              children: [
                                ListTile(
                                  title: Text("Privacy Information"),
                                ),
                              ],
                            ),
                            ExpansionTile(
                              title: Text("Legal"),
                              children: [
                                ListTile(
                                  title: Text("Legal Information"),
                                ),
                              ],
                            ),
                            ExpansionTile(
                              title: Text("Safe Banking"),
                              children: [
                                ListTile(
                                  title: Text("Safe Banking Information"),
                                ),
                              ],
                            ),
                            ListTile(
                              title: Text("ICICI Bank Canada Website"),
                            ),
                          ],
                        ),
                        isExpanded: true,
                      ),
                    ],
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
