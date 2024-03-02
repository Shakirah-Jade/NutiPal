import 'package:flutter/material.dart';
import 'package:goodfud/usergraph.dart';

class Personalized extends StatefulWidget {
  const Personalized({super.key});

  @override
  State<Personalized> createState() => _PersonalizedState();
}

class _PersonalizedState extends State<Personalized> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 185.0,
                      child: Row(children: [
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
                        SizedBox(width: 10.0),
                        Text(
                          'Hi, Jade',
                          style: TextStyle(
                            fontFamily: 'Estonia',
                            fontSize: 38.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Positioned(
                    top: 20.0,
                    right: 7.0,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white.withOpacity(0.4)),
                      child: Center(
                        child: Icon(Icons.notifications),
                      ),
                    )),
                Positioned(
                    top: 19.0,
                    right: 6.0,
                    child: Container(
                      height: 12.0,
                      width: 12.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF72A56C)),
                    ))
              ],
            ),
          ),

          //NEXT SECTION

          Stack(
            children: [
              Container(
                height: 180.0,
                width: 420.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Color(0xFF79B21B)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 20.0,
                child: Stack(
                  children: [
                    Container(
                      height: 160.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Leaf.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/avocado.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: Container(
                  // Adjust height and width based on your requirement
                  height: 120.0,
                  width: 180.0,
                  child: Text(
                    'Healthy Body Comes with Good Nutritions',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40.0,
                right: 20.0,
                child: Container(
                    // Adjust height and width based on your requirement
                    height: 120.0,
                    width: 180.0,
                    child: Center(
                      child: Text(
                        'Start your health Journey now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )),
              ),
            ],
          ),

          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.0),
            child: Text(
              'Today\'s specials are ..',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),

          // HAVING THE IMAGE GRID USING GRIDVIEW
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.85,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: [
              buildFoodCard('Classic Garden Salad', 'Italy', 'assets/veg6.jpg',
                  62, 22, 1),
              buildFoodCard(
                  'Greek Salad', 'German', 'assets/veg2.jpg', 62, 22, 2),
              buildFoodCard(
                  'Caprese Salad', 'German', 'assets/veg.jpg', 62, 22, 3),
              buildFoodCard(
                  'Asian Slaw', 'Sweden', 'assets/veg3.jpg', 62, 22, 4),
              buildFoodCard('Mediterranean Quinoa Salad', 'German',
                  'assets/veg4.jpg', 62, 22, 5),
              buildFoodCard('Roasted Vegetable Salad', 'Italy',
                  'assets/veg6.jpg', 62, 22, 6),
              buildFoodCard('Kale and Apple Salad', 'Italy', 'assets/veg2.jpg',
                  62, 22, 6),
              buildFoodCard('Kale and Apple Salad', 'Italy', 'assets/veg4.jpg',
                  62, 22, 6),
            ],
          ),
        ],
      ),
    );
  }

  // constracting the food card
  Widget buildFoodCard(String name, String origin, String img, int likes,
      int comcount, int cardindex) {
    return Padding(
      padding: cardindex.isEven
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // placing the image in the container
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      // fiting the image into the are
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        likes.toString(),
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        comcount.toString(),
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => UserGraph()));
                        },
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 19.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            // fot the cart button
            // Positioned(
            //     left: 110.0,
            //     top: 102.0,
            //     child: Container(
            //       height: 40.0,
            //       width: 40.0,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20.0),
            //           color: Colors.amber),
            //       child: Center(
            //         child: Icon(
            //           Icons.shopping_cart,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}
