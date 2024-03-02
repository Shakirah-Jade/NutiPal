import 'package:flutter/material.dart';
import 'package:goodfud/food.dart';
import 'package:goodfud/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String selectedOption = 'Maintain weight';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 185.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/veg6.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                        Text(
                          'NutriPal',
                          style: TextStyle(
                            fontFamily: 'openSans',
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
                IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.apple, color: Colors.grey.withOpacity(0.7))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Welcome Back !',
              style: TextStyle(
                fontFamily: 'openSans',
                fontSize: 21.5,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 30.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 45.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              size: 18.0,
                              color: Color(0xFF999798),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Color(0xFF999798))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //
                  Container(
                    padding: EdgeInsets.only(left: 45.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 18.0,
                              color: Color(0xFF999798),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Color(0xFF999798))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 45.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.message,
                              size: 18.0,
                              color: Color(0xFF999798),
                            ),
                            hintText: 'Glucose Level',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Color(0xFF999798))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //THE DROPDOWN
                  Container(
                    padding: EdgeInsets.only(left: 45.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: selectedOption,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue!;
                          });
                        },
                        items: <String>[
                          'Maintain weight',
                          'Gain weight',
                          'Loose weight'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        underline: Container(), // Remove the underline
                        icon: Icon(
                          Icons.arrow_drop_down,
                          size: 18.0,
                          color: Color(0xFF999798),
                        ),
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 14.0,
                          color: Color(0xFF999798),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Personalized()));
                      },
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF72A56C),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, bottom: 30.0, left: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          //HEADING TO THE LOGIN page
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignUp()));
                            },
                            child: Text(
                              'Sign UP',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF72A56C)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          height: 0.5,
                          width: 150.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          height: 0.5,
                          width: 110.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.0, left: 130.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/goo.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/face.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 3.0, right: 20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/app.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                      ////
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
