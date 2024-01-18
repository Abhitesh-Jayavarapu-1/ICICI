import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icici/gic.dart';
// import 'instruction.dart';
// import 'offline.dart';
// import 'package:intl/intl.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  TextEditingController _cobController = TextEditingController();
  String? phyn;
  String? tpyn;
  String? tpuyn;
  String? otpyn;
  bool acceptance = false;
  String? nop;
  String? ind;
  String? emps;
  String? pbf;

  String cob = '';
  String year = '00';
  String month = '00';
  final _formKey = GlobalKey<FormState>();

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Personal Details',
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          if (isDesktop(context))
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('assets/profilePic.jpg'),
                  radius: 20,
                ),
                SizedBox(
                    width: 8), // Adjust the spacing between the avatar and text
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Test'),
                    Text(
                      'last visited 12/01/2024 17:57 IST',
                      style: TextStyle(color: Colors.grey, fontSize: 10.0),
                    ),
                  ],
                ),
                SizedBox(width: 8),
              ],
            ),
          Stack(
            children: [
              Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 10),
                    ),
                  ))
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 245.0),
            padding: EdgeInsets.all(20.0),
            width: 1000,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isDesktop(context))
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            height: 50.0,
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'We would like to know more about you',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.5,
                              ),
                            ),
                          ),
                        if (isDesktop(context))
                          Container(
                            height: 1.0,
                            color: Colors.blueGrey,
                          ),
                        SizedBox(height: 20.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    controller: _cobController,
                                    decoration: InputDecoration(
                                      labelText: 'Country of Birth*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Nationality*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                height: 50.0,
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  controller: _cobController,
                                  decoration: InputDecoration(
                                    labelText: 'Country of Birth*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                height: 50.0,
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Nationality*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Learn more about PEP,HIO  ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                              children: [
                                TextSpan(
                                  text: '(Click here)',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Are you a PEP or HIO?*',
                            style: TextStyle(
                              fontSize: 16.5,
                              // color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 13.0),
                            Radio(
                              value: 'Yes',
                              groupValue: phyn,
                              onChanged: (value) {
                                setState(() {
                                  phyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            Radio(
                              value: 'No',
                              groupValue: phyn,
                              onChanged: (value) {
                                setState(() {
                                  phyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text(
                              'No',
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Are you a tax paying resident of Canada?*',
                            style: TextStyle(
                              fontSize: 16.5,
                              // color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 13.0),
                            Radio(
                              value: 'Yes',
                              groupValue: tpyn,
                              onChanged: (value) {
                                setState(() {
                                  tpyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            Radio(
                              value: 'No',
                              groupValue: tpyn,
                              onChanged: (value) {
                                setState(() {
                                  tpyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text('No', style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                        SizedBox(height: 13.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          width: 400.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Social Insurance Number(optional)',
                              labelStyle: TextStyle(color: Colors.grey),
                              hintText: 'Social Insurance Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          width: 480.0,
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'If you need help with your tax residency  information please visit Income Tax Folio, S5-F1-C1 - ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                              children: [
                                TextSpan(
                                  text:
                                      'Determining an Individual\'s Residence Status ',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                                TextSpan(
                                  text:
                                      ', on the CRA website or consult your tax advisor.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.5,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Are you a tax paying resident of United States?*',
                            style: TextStyle(
                              fontSize: 16.5,
                              // color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 13.0),
                            Radio(
                              value: 'Yes',
                              groupValue: tpuyn,
                              onChanged: (value) {
                                setState(() {
                                  tpuyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            Radio(
                              value: 'No',
                              groupValue: tpuyn,
                              onChanged: (value) {
                                setState(() {
                                  tpuyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text('No', style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          width: 400.0,
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Are you a tax paying resident of a jurisdiction other than Canada and United States?*',
                            style: TextStyle(
                              fontSize: 16.5,
                              // color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 13.0),
                            Radio(
                              value: 'Yes',
                              groupValue: otpyn,
                              onChanged: (value) {
                                setState(() {
                                  otpyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            Radio(
                              value: 'No',
                              groupValue: otpyn,
                              onChanged: (value) {
                                setState(() {
                                  otpyn = value.toString();
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Text('No', style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 13.0),
                            Checkbox(
                              value: acceptance,
                              onChanged: (value) {
                                setState(() {
                                  acceptance = value ?? false;
                                });
                              },
                              activeColor: Colors.deepOrangeAccent,
                            ),
                            Flexible(
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'I certify that the information given on this form is correct and complete. I will give ICICI Bank Canada a new form within 30 days of any change in circumstances that causes the information om this form to become incomplete, untrue or inaccurate.',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0)
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isDesktop(context))
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            height: 50.0,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'What is your Occupation ?',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.5,
                              ),
                            ),
                          ),
                        if (isDesktop(context))
                          Container(
                            height: 1.0,
                            color: Colors.blueGrey,
                          ),
                        SizedBox(height: 20.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  width: 200.0, // Adjust the width as needed
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nature of Profession*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    value: nop,
                                    onChanged: (value) {
                                      setState(() {
                                        nop = value;
                                      });
                                    },
                                    items: <String>[
                                      'Salaried',
                                      'Option 1',
                                      'Option 2'
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Industry*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    value: ind,
                                    onChanged: (value) {
                                      setState(() {
                                        ind = value;
                                      });
                                    },
                                    items: <String>['Option 1', 'Option 2']
                                        .map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nature of Profession*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: nop,
                                  onChanged: (value) {
                                    setState(() {
                                      nop = value;
                                    });
                                  },
                                  items: <String>[
                                    'Salaried',
                                    'Option 1',
                                    'Option 2'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Industry*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: nop,
                                  onChanged: (value) {
                                    setState(() {
                                      nop = value;
                                    });
                                  },
                                  items: <String>['Option 1', 'Option 2']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 40.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Title*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'title',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Employment Status*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    value: emps,
                                    onChanged: (value) {
                                      setState(() {
                                        emps = value;
                                      });
                                    },
                                    items: <String>['Option 1', 'Option 2']
                                        .map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Title*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'title',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Emplyment Status*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: nop,
                                  onChanged: (value) {
                                    setState(() {
                                      nop = value;
                                    });
                                  },
                                  items: <String>['Option 1', 'Option 2']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 40.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Primary Business Function*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    value: pbf,
                                    onChanged: (value) {
                                      setState(() {
                                        pbf = value;
                                      });
                                    },
                                    items: <String>['Option 1', 'Option 2']
                                        .map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Employer or Business Name*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Company Name',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Primary Business Function*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: pbf,
                                  onChanged: (value) {
                                    setState(() {
                                      pbf = value;
                                    });
                                  },
                                  items: <String>['Option 1', 'Option 2']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Employer or Business Name*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Company Name',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 40.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Employer Address 1*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Address',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Employer Address 2',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Address',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Employer Address 1*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Address',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Employer Address 2',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Address',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 40.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Country*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Country',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Province/State*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Province/State',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Country*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Country',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Province/State*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Province/State',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: 40.0),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'City*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'City',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.0),
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Postal Code*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Postal Code',
                                      border: OutlineInputBorder(),
                                    ),
                                    initialValue: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'City*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'City',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Postal Code*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Postal Code',
                                    border: OutlineInputBorder(),
                                  ),
                                  initialValue: null,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Length of Time Employed',
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        if (isDesktop(context))
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                width: 170.0, // Adjust the width as needed
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Year*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: year,
                                  onChanged: (value) {
                                    setState(() {
                                      year = value.toString();
                                    });
                                  },
                                  items: <String>['00', 'Option 1', 'Option 2']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                width: 160.0, // Adjust the width as needed
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Month*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: month,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please select a month';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      month = value.toString();
                                    });
                                  },
                                  items: <String>[
                                    '00',
                                    '01',
                                    '02',
                                    '03',
                                    '04',
                                    '05',
                                    '06',
                                    '07',
                                    '08',
                                    '09',
                                    '10',
                                    '11'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        if (isMobile(context))
                          Row(
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: Container(
                                  // width: 0.0, // Adjust the width as needed
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Year*',
                                      labelStyle: TextStyle(color: Colors.grey),
                                    ),
                                    value: year,
                                    onChanged: (value) {
                                      setState(() {
                                        year = value.toString();
                                      });
                                    },
                                    items: <String>[
                                      '00',
                                      'Option 1',
                                      'Option 2'
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Container(
                                width: 150.0, // Adjust the width as needed
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Month*',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  value: month,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please select a month';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      month = value.toString();
                                    });
                                  },
                                  items: <String>[
                                    '00',
                                    '01',
                                    '02',
                                    '03',
                                    '04',
                                    '05',
                                    '06',
                                    '07',
                                    '08',
                                    '09',
                                    '10',
                                    '11'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                            ],
                          ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: null,
                                  side: BorderSide(color: Colors.indigo),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  shadowColor: Colors.white,
                                ),
                                child: Text(
                                  'Back',
                                  style: TextStyle(color: Colors.indigo),
                                ),
                              ),
                              Expanded(child: Container()),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    cob = _cobController.text;
                                  });
                                  if (_formKey.currentState!.validate()) {}
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GICForm()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  shadowColor: Colors.white,
                                ),
                                child: Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('pp1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
