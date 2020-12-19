//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phyapp/listitem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitnessApp(),
    );
  }
}

class FitnessApp extends StatefulWidget {
  @override
  _FitnessAppState createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  //First we need to import some image link so we can use...
  String imgHeader = "https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80";

  List<String> trainingImage = [
    'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1550345332-09e3ac987658?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1567013127542-490d757e51fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1483721310020-03333e577078?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80',
    'https://images.unsplash.com/photo-1541694458248-5aa2101c77df?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        //Creating the collapsing App Header
        headerSliverBuilder: (context,innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              //set the height of the header
              expandedHeight: 300.0,
              //make it pinned
              //If wanna the appbar disappear when scroll then put "pinned: false"
              pinned: true,
              //disable the float
              floating: false,
              //add tittle
              title: Text(
                "FitApp",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              //change the background and the height of the toolbar
              backgroundColor: Colors.black,
              toolbarHeight: 80.0,
              //add a leading and an action button
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
              //Add the bottom search bar
              bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 24.0, left: 12.0, right: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                      hintText: "Search for a training program...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(80.0),
              ),
              actions: [
                IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                ),
                //Add the background of the header
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  imgHeader,
                  fit: BoxFit.cover,
                  //Make it darker
                  color: Color(0xaa212121),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
          ];
        },
        //Place the temporary body
        //Build the app's body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 34.0,right: 20.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Trends",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20.0),
                //Creating the list item widget
                listItem(trainingImage[0], "Full Body Program", 53, 30),
                listItem(trainingImage[1], "Yoga Training", 53, 30),
                listItem(trainingImage[2], "Cardio Training", 53, 30),
                listItem(trainingImage[3], "Hard Training", 53, 30),
                listItem(trainingImage[4], "For Girls and Woman", 53, 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


