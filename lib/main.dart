import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   
    return MaterialApp(   
        
      home: new Scaffold(   
         backgroundColor: Colors.cyan,
           
        body: Center(   
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/top.png'),
                    fit: BoxFit.fill,
                  ),
              
                ),
              ),
              Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/welcome.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/center.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/learn.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              IconButton(
                  icon: Image.asset('assets/images/button.jpg'),
                  iconSize: 100,
                  onPressed: () {
            _navigateToNextScreen(context);
          },
              ),
              IconButton(
                  icon: Image.asset('assets/images/exit.png'),
                  iconSize: 100,
                  onPressed: () {},
              ),
            ]
          )
        ),   
      ),   
    );   
  }   
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.cyan,
     body: Center(   
          child: Text(
          'SCIENCE is FUN',
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),      
      )
    );
  }
}


