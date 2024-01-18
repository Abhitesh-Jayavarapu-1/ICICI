import 'package:flutter/material.dart';
import 'package:icici/welcome_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

// class _RegistrationPageState extends State<RegistrationPage> {
//   String selectedTitle = '';
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController middleNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController dobController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController reEnterEmailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController reEnterPasswordController = TextEditingController();
//   String accountUsage = '';
//   String securityQuestion1 = '';
//   TextEditingController securityAnswer1Controller = TextEditingController();
//   String securityQuestion2 = '';
//   TextEditingController securityAnswer2Controller = TextEditingController();
//   String securityQuestion3 = '';
//   TextEditingController securityAnswer3Controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: const Color.fromARGB(255, 171, 78, 71),
//             pinned: true,
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back, color: Colors.white),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             title: Text('Registration'),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               Container(
//                 margin: EdgeInsets.only(top: 16),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 16.0, left: 16.0),
//                   child: Text(
//                     'Enter your details for Registration',
//                     style: TextStyle(
//                         color: Color.fromARGB(255, 39, 108, 255), fontSize: 20),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Instructions',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     BulletPoint(
//                       'The name provided should exactly match the name reflected on the ID document submitted.',
//                       '',
//                       iconColor: Colors.black,
//                     ),
//                     BulletPoint(
//                       'Please review the information provided before submission to ensure that it is correct and complete in all respects.',
//                       '',
//                       iconColor: Colors.black,
//                     ),
//                     BulletPoint(
//                       'Upon arrival in Canada, please submit your activation request.',
//                       '',
//                       iconColor: Colors.black,
//                     ),
//                     Text('Title', style: TextStyle(fontSize: 18)),
//                     Row(
//                       children: [
//                         TitleBox('Mr'),
//                         TitleBox('Ms'),
//                         TitleBox('Mrs'),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Text('First Name', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: firstNameController,
//                       icon: Icons.info_outline,
//                       hintText: 'Enter your first name',
//                     ),
//                     SizedBox(height: 10),
//                     Text('Middle Name', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: middleNameController,
//                       icon: Icons.info_outline,
//                       hintText: 'Enter your middle name',
//                     ),
//                     SizedBox(height: 10),
//                     Text('Last Name', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: lastNameController,
//                       icon: Icons.info_outline,
//                       hintText: 'Enter your last name',
//                     ),
//                     SizedBox(height: 10),
//                     Text('Date of Birth', style: TextStyle(fontSize: 18)),
//                     DatePickerBox(
//                       controller: dobController,
//                       hintText: 'Select your date of birth',
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       'Will this account be used by or on behalf of any other party who is not an account holder in this application?',
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Radio(
//                           value: 'Yes',
//                           groupValue: accountUsage,
//                           onChanged: (value) {
//                             setState(() {
//                               accountUsage = value.toString();
//                             });
//                           },
//                         ),
//                         Text('Yes'),
//                         Radio(
//                           value: 'No',
//                           groupValue: accountUsage,
//                           onChanged: (value) {
//                             setState(() {
//                               accountUsage = value.toString();
//                             });
//                           },
//                         ),
//                         Text('No'),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Text('Email Address', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: emailController,
//                       icon: Icons.email,
//                       hintText: 'Enter your email address',
//                     ),
//                     SizedBox(height: 10),
//                     Text('Re-enter Email Address',
//                         style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: reEnterEmailController,
//                       icon: Icons.email,
//                       hintText: 'Re-enter your email address',
//                     ),
//                     SizedBox(height: 50),
//                     Text('Password', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: passwordController,
//                       icon: Icons.lock,
//                       hintText: 'Enter your password',
//                       isPassword: true,
//                     ),
//                     SizedBox(height: 10),
//                     Text('Re-enter Password', style: TextStyle(fontSize: 18)),
//                     InputBox(
//                       controller: reEnterPasswordController,
//                       icon: Icons.lock,
//                       hintText: 'Re-enter your password',
//                       isPassword: true,
//                     ),
//                     SizedBox(height: 10),
//                     Text('Password Requirements'),
//                     SizedBox(height: 10),
//                     BulletList([
//                       'At least 8 characters long',
//                       'At least one uppercase letter',
//                       'At least one lowercase letter',
//                       'At least one number',
//                       'At least one special character'
//                     ]),
//                     SizedBox(height: 20),
//                     Text(
//                       'In case you forgot your password, you will be required to answer one of these security questions to regenerate your password',
//                       style: TextStyle(
//                           color: const Color.fromARGB(255, 147, 127, 127)),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Security Questions',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SecurityQuestionDropdown(
//                       hintText: 'Select Security Question 1',
//                       onChanged: (value) {
//                         setState(() {
//                           securityQuestion1 = value.toString();
//                         });
//                       },
//                     ),
//                     SizedBox(height: 10),
//                     InputBox(
//                       controller: securityAnswer1Controller,
//                       icon: Icons.edit,
//                       hintText: 'Answer for Security Question 1',
//                     ),
//                     SizedBox(height: 10),
//                     SecurityQuestionDropdown(
//                       hintText: 'Select Security Question 2',
//                       onChanged: (value) {
//                         setState(() {
//                           securityQuestion2 = value.toString();
//                         });
//                       },
//                     ),
//                     SizedBox(height: 10),
//                     InputBox(
//                       controller: securityAnswer2Controller,
//                       icon: Icons.edit,
//                       hintText: 'Answer for Security Question 2',
//                     ),
//                     SizedBox(height: 10),
//                     SecurityQuestionDropdown(
//                       hintText: 'Select Security Question 3',
//                       onChanged: (value) {
//                         setState(() {
//                           securityQuestion3 = value.toString();
//                         });
//                       },
//                     ),
//                     SizedBox(height: 10),
//                     InputBox(
//                       controller: securityAnswer3Controller,
//                       icon: Icons.edit,
//                       hintText: 'Answer for Security Question 3',
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       'Setting up your profile will help you to login to this application later. By providing your email address, you are authorizing ICICI Bank Canada to send your correspondence to this email address',
//                       style: TextStyle(
//                           color: const Color.fromARGB(255, 147, 127, 127)),
//                     ),
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle registration here
//                         _handleRegistration();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(
//                             255, 103, 131, 198), // Background color
//                         onPrimary: Colors.white, // Text color
//                         padding: EdgeInsets.symmetric(
//                             vertical: 16), // Vertical padding
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(8), // Rounded corners
//                         ),
//                         minimumSize: Size(double.infinity, 0), // Full width
//                       ),
//                       child: Text(
//                         'Register',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget TitleBox(String title) {
//     bool isSelected = selectedTitle == title;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedTitle = title;
//         });
//       },
//       child: Container(
//         width: 110.0,
//         margin: EdgeInsets.only(right: 10, top: 5),
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.black),
//           color: isSelected ? Colors.blue : Colors.white,
//         ),
//         child: Text(
//           title,
//           style: TextStyle(
//             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//       ),
//     );
//   }

//   void _handleRegistration() {
//     // Implement your registration logic here
//     // You can access all the entered data using the controllers
//     // For example:
//     final String title = selectedTitle;
//     final String firstName = firstNameController.text;
//     final String middleName = middleNameController.text;
//     final String lastName = lastNameController.text;
//     final String dob = dobController.text;
//     final String email = emailController.text;
//     final String reEnterEmail = reEnterEmailController.text;
//     final String password = passwordController.text;
//     final String reEnterPassword = reEnterPasswordController.text;
//     final String accountUsageValue = accountUsage;
//     final String securityQuestion1Value = securityQuestion1;
//     final String securityAnswer1 = securityAnswer1Controller.text;
//     final String securityQuestion2Value = securityQuestion2;
//     final String securityAnswer2 = securityAnswer2Controller.text;
//     final String securityQuestion3Value = securityQuestion3;
//     final String securityAnswer3 = securityAnswer3Controller.text;

//     // Perform registration actions with the data
//     // ...
//   }
// }

class _RegistrationPageState extends State<RegistrationPage> {
  String selectedTitle = '';
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController reEnterEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();
  String accountUsage = '';
  String securityQuestion1 = '';
  TextEditingController securityAnswer1Controller = TextEditingController();
  String securityQuestion2 = '';
  TextEditingController securityAnswer2Controller = TextEditingController();
  String securityQuestion3 = '';
  TextEditingController securityAnswer3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          bool isMobile = sizingInformation.isMobile;

          return Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1200),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: CustomScrollView(
                slivers: [
                  isMobile
                      ? SliverAppBar(
                          backgroundColor:
                              const Color.fromARGB(255, 171, 78, 71),
                          pinned: true,
                          leading: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          title: Text('Registration'),
                        )
                      : SliverAppBar(
                          backgroundColor: Colors.white,
                          expandedHeight: kToolbarHeight,
                          pinned: true,
                          flexibleSpace: FlexibleSpaceBar(
                            centerTitle: true,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Left logo
                                Transform.translate(
                                    offset: Offset(-65.0, 5.0),
                                    child: (Image.network(
                                      'data:image/png;base64,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', // Replace with the path to your left logo
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit
                                          .cover, // Adjust the fit as needed
                                    ))),
                                // Title
                                Transform.translate(
                                    offset: Offset(-20.0, 0.0),
                                    child: (Text(
                                      'Registration',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 18, 55, 237)),
                                    ))),
                                // Right logo
                                Transform.translate(
                                    offset: Offset(-5.0, 5.0),
                                    child: (Image.network(
                                      'data:image/png;base64,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', // Replace with the path to your right logo
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit
                                          .contain, // Adjust the fit as needed
                                    ))),
                              ],
                            ),
                          ),
                        ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                          child: Text(
                            'Enter your details for Registration',
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 108, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Instructions',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            BulletPoint(
                              'The name provided should exactly match the name reflected on the ID document submitted.',
                              '',
                              iconColor: Colors.black,
                            ),
                            BulletPoint(
                              'Please review the information provided before submission to ensure that it is correct and complete in all respects.',
                              '',
                              iconColor: Colors.black,
                            ),
                            BulletPoint(
                              'Upon arrival in Canada, please submit your activation request.',
                              '',
                              iconColor: Colors.black,
                            ),
                            Text('Title', style: TextStyle(fontSize: 18)),
                            Row(
                              children: [
                                TitleBox('Mr'),
                                TitleBox('Ms'),
                                TitleBox('Mrs'),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Adjusted layout for web
                            isMobile
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('First Name',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: firstNameController,
                                        icon: Icons.info_outline,
                                        hintText: 'Enter your first name',
                                      ),
                                      SizedBox(height: 10),
                                      Text('Middle Name',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: middleNameController,
                                        icon: Icons.info_outline,
                                        hintText: 'Enter your middle name',
                                      ),
                                      SizedBox(height: 10),
                                      Text('Last Name',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: lastNameController,
                                        icon: Icons.info_outline,
                                        hintText: 'Enter your last name',
                                      ),
                                      SizedBox(height: 10),
                                      Text('Date of Birth',
                                          style: TextStyle(fontSize: 18)),
                                      DatePickerBox(
                                        controller: dobController,
                                        hintText: 'Select your date of birth',
                                      ),
                                    ],
                                  )
                                : Column(children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: InputBox(
                                            controller: firstNameController,
                                            icon: Icons.info_outline,
                                            hintText: 'Enter your first name',
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: InputBox(
                                            controller: middleNameController,
                                            icon: Icons.info_outline,
                                            hintText: 'Enter your middle name',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Transform.translate(
                                              offset: Offset(-10.0, 0.0),
                                              child: (InputBox(
                                                controller: lastNameController,
                                                icon: Icons.info_outline,
                                                hintText:
                                                    'Enter your last name',
                                              ))),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Transform.translate(
                                              offset: Offset(-4.0, 0.0),
                                              child: (DatePickerBox(
                                                controller: dobController,
                                                hintText:
                                                    'Select your date of birth',
                                              ))),
                                        ),
                                      ],
                                    )
                                  ]),
                            SizedBox(height: 20),
                            Text(
                              'Will this account be used by or on behalf of any other party who is not an account holder in this application?',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 'Yes',
                                  groupValue: accountUsage,
                                  onChanged: (value) {
                                    setState(() {
                                      accountUsage = value.toString();
                                    });
                                  },
                                ),
                                Text('Yes'),
                                Radio(
                                  value: 'No',
                                  groupValue: accountUsage,
                                  onChanged: (value) {
                                    setState(() {
                                      accountUsage = value.toString();
                                    });
                                  },
                                ),
                                Text('No'),
                              ],
                            ),
                            SizedBox(height: 10),
                            isMobile
                                ? Column(
                                    children: [
                                      Text('Email Address',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: emailController,
                                        icon: Icons.email,
                                        hintText: 'Enter your email address',
                                      ),
                                      SizedBox(height: 10),
                                      Text('Re-enter Email Address',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: reEnterEmailController,
                                        icon: Icons.email,
                                        hintText: 'Re-enter your email address',
                                      ),
                                      SizedBox(height: 50),
                                      Text('Password',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: passwordController,
                                        icon: Icons.lock,
                                        hintText: 'Enter your password',
                                        isPassword: true,
                                      ),
                                      SizedBox(height: 10),
                                      Text('Re-enter Password',
                                          style: TextStyle(fontSize: 18)),
                                      InputBox(
                                        controller: reEnterPasswordController,
                                        icon: Icons.lock,
                                        hintText: 'Re-enter your password',
                                        isPassword: true,
                                      ),
                                    ],
                                  )
                                : Column(children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: InputBox(
                                            controller: emailController,
                                            icon: Icons.email,
                                            hintText:
                                                'Enter your email address',
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: InputBox(
                                            controller: reEnterEmailController,
                                            icon: Icons.email,
                                            hintText:
                                                'Re-enter your email address',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Transform.translate(
                                              offset: Offset(-10.0, 0.0),
                                              child: (InputBox(
                                                controller: passwordController,
                                                icon: Icons.lock,
                                                hintText: 'Enter your password',
                                              ))),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Transform.translate(
                                              offset: Offset(-4.0, 0.0),
                                              child: (InputBox(
                                                controller:
                                                    reEnterPasswordController,
                                                icon: Icons.lock,
                                                hintText:
                                                    'Re-enter your password',
                                              ))),
                                        ),
                                      ],
                                    )
                                  ]),
                            SizedBox(height: 10),
                            Text('Password Requirements'),
                            SizedBox(height: 10),
                            BulletList([
                              'At least 8 characters long',
                              'At least one uppercase letter',
                              'At least one lowercase letter',
                              'At least one number',
                              'At least one special character'
                            ]),
                            SizedBox(height: 20),
                            Text(
                              'In case you forgot your password, you will be required to answer one of these security questions to regenerate your password',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 147, 127, 127)),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Security Questions',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            isMobile
                                ? Column(children: [
                                    SecurityQuestionDropdown(
                                      hintText: 'Select Security Question 1',
                                      onChanged: (value) {
                                        setState(() {
                                          securityQuestion1 = value.toString();
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    InputBox(
                                      controller: securityAnswer1Controller,
                                      icon: Icons.edit,
                                      hintText:
                                          'Answer for Security Question 1',
                                    ),
                                    SizedBox(height: 10),
                                    SecurityQuestionDropdown(
                                      hintText: 'Select Security Question 2',
                                      onChanged: (value) {
                                        setState(() {
                                          securityQuestion2 = value.toString();
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    InputBox(
                                      controller: securityAnswer2Controller,
                                      icon: Icons.edit,
                                      hintText:
                                          'Answer for Security Question 2',
                                    ),
                                    SizedBox(height: 10),
                                    SecurityQuestionDropdown(
                                      hintText: 'Select Security Question 3',
                                      onChanged: (value) {
                                        setState(() {
                                          securityQuestion3 = value.toString();
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    InputBox(
                                      controller: securityAnswer3Controller,
                                      icon: Icons.edit,
                                      hintText:
                                          'Answer for Security Question 3',
                                    ),
                                  ])
                                : Transform.translate(
                                    offset: Offset(-10.0, 0.0),
                                    child: (Column(children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: SecurityQuestionDropdown(
                                              hintText:
                                                  'Select Security Question 1',
                                              onChanged: (value) {
                                                setState(() {
                                                  securityQuestion1 =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: InputBox(
                                              controller:
                                                  securityAnswer1Controller,
                                              icon: Icons.edit,
                                              hintText:
                                                  'Answer for Security Question 1',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: SecurityQuestionDropdown(
                                              hintText:
                                                  'Select Security Question 2',
                                              onChanged: (value) {
                                                setState(() {
                                                  securityQuestion2 =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: InputBox(
                                              controller:
                                                  securityAnswer2Controller,
                                              icon: Icons.edit,
                                              hintText:
                                                  'Answer for Security Question 2',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: SecurityQuestionDropdown(
                                              hintText:
                                                  'Select Security Question 3',
                                              onChanged: (value) {
                                                setState(() {
                                                  securityQuestion3 =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: InputBox(
                                              controller:
                                                  securityAnswer3Controller,
                                              icon: Icons.edit,
                                              hintText:
                                                  'Answer for Security Question 3',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]))),
                            SizedBox(height: 5),
                            Text(
                              'Setting up your profile will help you to login to this application later. By providing your email address, you are authorizing ICICI Bank Canada to send your correspondence to this email address',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 147, 127, 127)),
                            ),
                            SizedBox(height: 20),
                            isMobile
                                ? ElevatedButton(
                                    onPressed: () {
                                      // Handle registration here
                                      _handleRegistration();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 103, 131,
                                          198), // Background color
                                      onPrimary: Colors.white, // Text color
                                      padding: EdgeInsets.symmetric(
                                          vertical: 16), // Vertical padding
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8), // Rounded corners
                                      ),
                                      minimumSize: Size(
                                          double.infinity, 0), // Full width
                                    ),
                                    child: Text(
                                      'Register',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  )
                                : Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Back',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(255, 103,
                                                131, 198), // Background color
                                            onPrimary:
                                                Colors.white, // Text color
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    16), // Vertical padding
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8), // Rounded corners
                                            ),
                                            minimumSize: Size(double.infinity,
                                                0), // Full width
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Handle registration here
                                            _handleRegistration();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(255, 103,
                                                131, 198), // Background color
                                            onPrimary:
                                                Colors.white, // Text color
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    16), // Vertical padding
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8), // Rounded corners
                                            ),
                                            minimumSize: Size(double.infinity,
                                                0), // Full width
                                          ),
                                          child: Text(
                                            'Register',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                            // ... (Previous code remains unchanged)
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget TitleBox(String title) {
    bool isSelected = selectedTitle == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTitle = title;
        });
      },
      child: Container(
        width: 110.0,
        margin: EdgeInsets.only(right: 10, top: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isSelected ? Colors.blue : Colors.white,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void _handleRegistration() {
    // Implement your registration logic here
    // You can access all the entered data using the controllers
    // For example:
    final String title = selectedTitle;
    final String firstName = firstNameController.text;
    final String middleName = middleNameController.text;
    final String lastName = lastNameController.text;
    final String dob = dobController.text;
    final String email = emailController.text;
    final String reEnterEmail = reEnterEmailController.text;
    final String password = passwordController.text;
    final String reEnterPassword = reEnterPasswordController.text;
    final String accountUsageValue = accountUsage;
    final String securityQuestion1Value = securityQuestion1;
    final String securityAnswer1 = securityAnswer1Controller.text;
    final String securityQuestion2Value = securityQuestion2;
    final String securityAnswer2 = securityAnswer2Controller.text;
    final String securityQuestion3Value = securityQuestion3;
    final String securityAnswer3 = securityAnswer3Controller.text;

    // Perform registration actions with the data
    // ...
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }
  // ... (Previous code remains unchanged)
}

class BulletPoint extends StatelessWidget {
  final String title;
  final String description;
  final Color iconColor;

  const BulletPoint(this.title, this.description, {required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.fiber_manual_record, size: 10, color: iconColor),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18)),
                Text(description),
              ],
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

class DatePickerBox extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  DatePickerBox({required this.controller, required this.hintText});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ))!;
    if (picked != null && picked != DateTime.now())
      controller.text = picked.toLocal().toString().split(' ')[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => _selectDate(context),
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
                        enabled: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.calendar_today),
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

class SecurityQuestionDropdown extends StatelessWidget {
  final String hintText;
  final Function onChanged;

  SecurityQuestionDropdown({required this.hintText, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButtonFormField<String>(
                hint: Text(hintText),
                isExpanded: true,
                items: [
                  DropdownMenuItem<String>(
                    value: 'What is your favorite color?',
                    child: Text('What is your favorite color?'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'What is the name of your first pet?',
                    child: Text('What is the name of your first pet?'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'What city were you born in?',
                    child: Text('What city were you born in?'),
                  ),
                ],
                onChanged: (value) {
                  onChanged(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
