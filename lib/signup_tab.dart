import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:icici/instruction.dart';

class SignupTab extends StatefulWidget {
  final bool switchValue;
  final ValueChanged<bool> onSwitchChanged;

  SignupTab({required this.switchValue, required this.onSwitchChanged});

  @override
  _SignupTabState createState() => _SignupTabState();
}

class _SignupTabState extends State<SignupTab> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();
  String? selectedRadio;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Complete your One-Time registration',
              style: TextStyle(
                color: Color.fromARGB(255, 16, 29, 96),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'I have a Reference Code',
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                FlutterSwitch(
                  value: widget.switchValue,
                  padding: 2.0,
                  toggleColor: Colors.white,
                  activeColor: Colors.deepOrange.shade400,
                  inactiveColor: Colors.grey.shade500,
                  onToggle: widget.onSwitchChanged,
                ),
              ],
            ),
            SizedBox(height: 20),
            if (widget.switchValue)
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: 'Reference Code*',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Reference code cannot be empty!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Passport Number*',
                          border: OutlineInputBorder(),
                        ),
                        obscuringCharacter: '*',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Passport number cannot be empty!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: dateController,
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2101),
                          );

                          if (pickedDate != null &&
                              pickedDate != selectedDate) {
                            setState(() {
                              selectedDate = pickedDate;
                              dateController.text =
                                  "${pickedDate.toLocal()}".split(' ')[0];
                            });
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Date of Birth*',
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: selectedDate,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2101),
                              );

                              if (pickedDate != null &&
                                  pickedDate != selectedDate) {
                                setState(() {
                                  selectedDate = pickedDate;
                                  dateController.text =
                                      "${pickedDate.toLocal()}".split(' ')[0];
                                });
                              }
                            },
                            child: Icon(Icons.calendar_today),
                          ),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select your date of birth!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Validate the form
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, perform your actions here
                            setState(() {
                              errorMessage = null;
                            });
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstructionPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          minimumSize: Size(double.infinity, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Color.fromARGB(255, 41, 56, 132),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.network(
                          'https://th.bing.com/th/id/OIP.4PvuBIJEiXqYBCQqW4x4MgAAAA?rs=1&pid=ImgDetMain')
                    ],
                  ),
                ),
              )
            else
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Are you applying from Canada?*',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Radio(
                          value: 'Yes',
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value.toString();
                            });
                          },
                        ),
                        Text(
                          "Yes",
                          style: TextStyle(fontSize: 20),
                        ),
                        Radio(
                          value: 'No',
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value.toString();
                            });
                          },
                        ),
                        Text(
                          "No",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructionPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        minimumSize: Size(double.infinity, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Color.fromARGB(255, 41, 56, 132),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                        'https://th.bing.com/th/id/OIP.4PvuBIJEiXqYBCQqW4x4MgAAAA?rs=1&pid=ImgDetMain'),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
