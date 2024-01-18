import 'package:flutter/material.dart';
import 'package:icici/pp1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class Item1 {
  Item1({required this.headerText, this.isExpanded = false});
  String headerText;
  bool isExpanded;
}

class Item2 {
  Item2({required this.headerText, this.isExpanded = false});
  String headerText;
  bool isExpanded;
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Personal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  String selectedValue1 = '12';
  String selectedValue3 = '12';
  String selectedValue4 = '05';
  bool isChecked = false;
  bool isChecked2 = false;
  String? selectedOption1;
  String? selectedOption2;
  String? selectedOption3;
  // int ? selectedvalue3;
  final List<Item1> _data = List<Item1>.generate(1, (int index) {
    return Item1(headerText: '');
  });
  final List<Item2> _data2 = List<Item2>.generate(1, (int index) {
    return Item2(headerText: '');
  });
  String selectedValue2 = '05';
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  TextEditingController dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    super.initState();
    dateController = TextEditingController(
      text: "${selectedDate.toLocal()}".split(' ')[0],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ) as DateTime;
    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal Details',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 26, 35, 126)),
          ),
          actions: [
            const Image(image: AssetImage('assets/images/pp.jpg')),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 6,
                ),
                Text('Test'),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'last visited 12/01/2024 17:57 IST',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        drawer: const Drawer(),
        body: Center(
          child: Container(
            color: Colors.white,
            width: 1500,
            child: ListView(
              children: <Widget>[
                Container(
                  width: 1500,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.4),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            color: Colors.grey[350],
                            width: 1500,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              child: Text(
                                'Tell us about yourself',
                                style: TextStyle(fontSize: 22),
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Text(
                            'Title',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: const ContinuousRectangleBorder(),
                                    side:
                                        const BorderSide(color: Colors.orange)),
                                child: const Text('Mr')),
                            const SizedBox(
                              width: 20,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: const ContinuousRectangleBorder(),
                                  side: const BorderSide(color: Colors.orange)),
                              child: const Text('Ms'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: const ContinuousRectangleBorder(),
                                    side:
                                        const BorderSide(color: Colors.orange)),
                                child: const Text('Mrs'))
                          ],
                        ),
                        const SizedBox(height: 25),
                        Form(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'First Name*',
                                          hintText: 'Test five',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Middle Name',
                                          hintText: 'new',
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Last Name*',
                                          hintText: 'latest two',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      controller: dateController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                          labelText: 'Date Of Birth',
                                          hintText: '01/05/2000',
                                          border: const OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                              onPressed: () =>
                                                  _selectDate(context),
                                              icon: const Icon(Icons
                                                  .calendar_month_outlined))),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: "Mother's Maiden Name",
                                          border: OutlineInputBorder(),
                                          hintText: 'erjgury'),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Social Insurance Number*',
                                          hintText: '515615615',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
                Container(
                    color: Colors.white,
                    child: const SizedBox(
                      height: 20,
                    )),
                Container(
                  height: 1200,
                  width: 500,
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 190, 134, 134),
                    border: Border.all(color: Colors.black, width: 0.4),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            color: Colors.grey[350],
                            width: 1500,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              child: Text(
                                'How can we contact you?',
                                style: TextStyle(fontSize: 22),
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                          child: Text(
                            'Home Address',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 10, 10),
                          child: Text(
                              'Please fill the address where you presently live.This address cannot be a postal installation i.e, PO Box,RR,Site,Comp orD/General Delivery address'),
                        ),
                        Form(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Type your address*',
                                          hintText: 'Type your address',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Street Number*',
                                          hintText: '116',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Street Name*',
                                          hintText: 'Albert st',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      labelText: 'Unit Number',
                                      hintText: '300',
                                      border: OutlineInputBorder(),
                                    )),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: "Province*",
                                          border: OutlineInputBorder(),
                                          hintText: 'ON'),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'City*',
                                          hintText: 'Ottawa',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Country*',
                                          hintText: 'Canada',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Postal Code*',
                                          hintText: 'K1P 5G3',
                                          border: OutlineInputBorder()),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter something';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 25)
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 10, 10),
                          child: Text('Year of Residing'),
                        ),
                        Form(
                            child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: SizedBox(
                                width: 200,
                                child: DropdownButtonFormField(
                                  value: selectedValue1,
                                  items: [
                                    '12',
                                    '2022',
                                    '2023',
                                    '2024',
                                  ].map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue1 = newValue as String;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Year',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: SizedBox(
                                width: 200,
                                child: DropdownButtonFormField(
                                  value: selectedValue2,
                                  items: [
                                    '05',
                                    '06',
                                    '07',
                                    '08',
                                  ].map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue2 = newValue as String;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Month',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                          child: Text(
                            'Mailing Address',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  }),
                            ),
                            const Text('Same as Home Address')
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                          child: Text(
                            'Contact Details',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                            child: SizedBox(
                              width: 400,
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Email Address*',
                                      hintText: '7@d1.com',
                                      border: OutlineInputBorder())),
                            ),
                          ),
                        ),
                        Form(
                            child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                              child: SizedBox(
                                width: 200,
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Home Telephone Number*',
                                        hintText: '8590762094',
                                        border: OutlineInputBorder())),
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                              child: SizedBox(
                                width: 200,
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Phone Number*',
                                        hintText: '8761092546',
                                        border: OutlineInputBorder())),
                              ),
                            ),
                          ],
                        )),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 1, 5, 5),
                                  child: SizedBox(
                                      width: 400,
                                      child: Text(
                                          'Register for free TEXT ALERTS (SMS) service*')),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 5, 5),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 120,
                                        child: RadioListTile(
                                          title: const Text('Yes'),
                                          value: 'Yes',
                                          groupValue: selectedOption1,
                                          onChanged: (String? value) {
                                            setState(() {
                                              selectedOption1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 120,
                                        child: RadioListTile(
                                          title: const Text('No'),
                                          value: 'No',
                                          groupValue: selectedOption1,
                                          onChanged: (String? value) {
                                            setState(() {
                                              selectedOption1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 1, 5, 5),
                                  child: SizedBox(
                                      width: 400,
                                      child: Text('Check book required*')),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 1, 5, 5),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 120,
                                        child: RadioListTile(
                                          title: const Text('Yes'),
                                          value: 'Yes',
                                          groupValue: selectedOption2,
                                          onChanged: (String? value) {
                                            setState(() {
                                              selectedOption2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 120,
                                        child: RadioListTile(
                                          title: const Text('No'),
                                          value: 'No',
                                          groupValue: selectedOption2,
                                          onChanged: (String? value) {
                                            setState(() {
                                              selectedOption2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 1, 5, 5),
                              child: SizedBox(
                                  width: 400,
                                  child: Text(
                                      'Register for monthly physical statements*')),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 1, 5, 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: RadioListTile(
                                      visualDensity: VisualDensity.compact,
                                      title: const Text('Yes'),
                                      value: 'Yes',
                                      groupValue: selectedOption3,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedOption3 = value;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: RadioListTile(
                                      title: const Text('No'),
                                      value: 'No',
                                      groupValue: selectedOption3,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedOption3 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 1, 1, 1),
                          child: SizedBox(
                              width: 430,
                              child: Text(
                                  'You will receive your statement by email free of charge. A monthly charge is applicable for physical statements(refer to Disclosure Statement of Fees and Charges for Personal Accounts on icicibank.ca)')),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side:
                                          const BorderSide(color: Colors.blue),
                                      foregroundColor: Colors.blue[800],
                                      shape: const RoundedRectangleBorder()),
                                  child: const Text('Back'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PersonalInfoPage()),
                                    );
                                  },
                                  textColor: Colors.white,
                                  color: Colors.blue[900],
                                  child: const Text('Next'),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Personal Details',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red[800],
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          ),
          drawer: const Drawer(),
          body: Container(
            color: Colors.white,
            height: 900,
            child: ListView(
              children: <Widget>[
                SingleChildScrollView(
                  child: ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        _data[index].isExpanded = isExpanded;
                      });
                    },
                    children: _data.map<ExpansionPanel>((Item1 item) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text(
                              'Tell us about yourself ',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        },
                        body: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 2, 10, 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    'Title',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              shape:
                                                  const ContinuousRectangleBorder(),
                                              side: const BorderSide(
                                                  color: Colors.orange)),
                                          child: const Text('Mr')),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                            shape:
                                                const ContinuousRectangleBorder(),
                                            side: const BorderSide(
                                                color: Colors.orange)),
                                        child: const Text('Ms'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              shape:
                                                  const ContinuousRectangleBorder(),
                                              side: const BorderSide(
                                                  color: Colors.orange)),
                                          child: const Text('Mrs'))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 350,
                                    child: Form(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'First Name*',
                                                    hintText: 'Test five',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Middle Name*',
                                                    hintText: 'new',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Last Name*',
                                                    hintText: 'Latest two',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                controller: dateController,
                                                readOnly: true,
                                                decoration: InputDecoration(
                                                    labelText: 'Date Of Birth',
                                                    hintText: '01/05/2000',
                                                    isDense: true,
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        const OutlineInputBorder(),
                                                    suffixIcon: IconButton(
                                                        onPressed: () =>
                                                            _selectDate(
                                                                context),
                                                        icon: const Icon(Icons
                                                            .calendar_month_outlined)))),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText:
                                                        "Mother's Maiden Name",
                                                    border:
                                                        OutlineInputBorder(),
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    hintText: 'erjgury')),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText:
                                                        'Social Insurance Number*',
                                                    hintText: '515615615',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        isExpanded: item.isExpanded,
                      );
                    }).toList(),
                  ),
                ),
                //BELOW ARE THE CONTACT DETAILS
                SingleChildScrollView(
                  child: ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        _data2[index].isExpanded = isExpanded;
                      });
                    },
                    children: _data2.map<ExpansionPanel>((Item2 item) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text(
                              'How can we contact you?',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        },
                        body: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 2, 10, 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    'Home Address',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Please fill the address where you presently live. This address cannot be a postal installation i.e, PO Box, RR, Site, Comp orD/General Delivery address',
                                    style: TextStyle(wordSpacing: 5),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 450,
                                    child: Form(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText:
                                                        'Type your address*',
                                                    hintText:
                                                        'Type your address',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Street Number*',
                                                    hintText: '116',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Street Name*',
                                                    hintText: 'Albert St',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                              labelText: 'Unit Number',
                                              hintText: '300',
                                              isDense: true,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              border: OutlineInputBorder(),
                                            )),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                        labelText: "Province*",
                                                        border:
                                                            OutlineInputBorder(),
                                                        isDense: true,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        10,
                                                                    horizontal:
                                                                        10),
                                                        hintText: 'ON')),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'City*',
                                                    hintText: 'Ottawa',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Country*',
                                                    hintText: 'Canada',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Postal Code*',
                                                    hintText: 'K1P 5G3',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text('Year of Residing'),
                                  Container(
                                    color: Colors.white,
                                    height: 70,
                                    child: Form(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          child: DropdownButtonFormField(
                                            value: selectedValue3,
                                            items: [
                                              '12',
                                              '2022',
                                              '2023',
                                              '2024',
                                            ].map((String value) {
                                              return DropdownMenuItem(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedValue3 =
                                                    newValue as String;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              labelText: 'Year',
                                              isDense: true,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: DropdownButtonFormField(
                                            value: selectedValue4,
                                            items: [
                                              '05',
                                              '06',
                                              '07',
                                              '08',
                                            ].map((String value) {
                                              return DropdownMenuItem(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedValue4 =
                                                    newValue as String;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              labelText: 'Month',
                                              isDense: true,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                  ),
                                  const Text(
                                    'Mailing Address',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 70,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                            value: isChecked2,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value ?? false;
                                              });
                                            }),
                                        const Text('Same as Home Address')
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Contact Details',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 530,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                            decoration: const InputDecoration(
                                                labelText: 'Email Address*',
                                                hintText: '7@d1.com',
                                                isDense: true,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 10),
                                                border: OutlineInputBorder())),
                                        const SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 200,
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText:
                                                        'Home Telephone Number*',
                                                    hintText: '8590762094',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 200,
                                            child: TextFormField(
                                                decoration: const InputDecoration(
                                                    labelText: 'Phone Number*',
                                                    hintText: '8761092546',
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    border:
                                                        OutlineInputBorder())),
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              width: 200,
                                              child: Text(
                                                  'Register for monthly physical statements*')),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                title: const Text('Yes'),
                                                value: 'Yes',
                                                groupValue: selectedOption1,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption1 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                title: const Text('No'),
                                                value: 'No',
                                                groupValue: selectedOption1,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption1 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              width: 200,
                                              child:
                                                  Text('Check book required*')),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                title: const Text('Yes'),
                                                value: 'Yes',
                                                groupValue: selectedOption2,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption2 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                title: const Text('No'),
                                                value: 'No',
                                                groupValue: selectedOption2,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption2 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              width: 200,
                                              child: Text(
                                                  'Register for monthly physical statements*')),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                title: const Text('Yes'),
                                                value: 'Yes',
                                                groupValue: selectedOption3,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption3 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 120,
                                              child: RadioListTile(
                                                title: const Text('No'),
                                                value: 'No',
                                                groupValue: selectedOption3,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedOption3 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              width: 480,
                                              child: Text(
                                                'You will receive your statement by email free of charge. A monthly charge is applicable for physical statements(refer to Disclosure Statement of Fees and Charges for Personal Accounts on icicibank.ca)',
                                                style:
                                                    TextStyle(wordSpacing: 3),
                                              )),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: OutlinedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white,
                                                    side: const BorderSide(
                                                        color: Colors.blue),
                                                    foregroundColor:
                                                        Colors.blue[800],
                                                    shape:
                                                        const RoundedRectangleBorder()),
                                                child: const Text('Back'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PersonalInfoPage()),
                                                  );
                                                },
                                                textColor: Colors.white,
                                                color: Colors.blue[900],
                                                child: const Text('Next'),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                        isExpanded: item.isExpanded,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ));
    }
  }
}
