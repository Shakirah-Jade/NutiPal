import 'package:flutter/material.dart';
import 'package:goodfud/signup.dart';

void main() => runApp(GoodFud());

class GoodFud extends StatelessWidget {
  const GoodFud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            //ADDING THE BACKGROUND IMAGE
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/veg3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.8),
            ),

            //POSITIONING THE WORDS AND THE BUTTONS
            Positioned(
                top: 550.0,
                left: 20.0,
                right: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'THIS IS NUTRIPAL',
                        style: TextStyle(
                            fontSize: 44.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Estonia',
                            color: Color(0xFF939190)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Discover personalized nutrition recommendations tailored just for you.\nAchieve your health goals with NutriPal ',
                        style: TextStyle(
                            fontSize: 18.5,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF939190)),
                        textAlign: TextAlign.center,
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
                              builder: (context) => SignUp()));
                        },
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(0xFF72A56C),
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  color: Color(0xFF939190), width: 2.0)),
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
