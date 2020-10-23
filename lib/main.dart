import 'package:flutter/material.dart';
import 'signup.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "SignUp and Login",
      home: Home(),
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/signup': (BuildContext context) => new SignUpPage()
      // },

    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(20.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 165.0, 0.0, 0.0),
                    child: Text(
                      "There",
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(245.0, 165.0, 0.0, 0.0),
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      hintText: "Enter your Email"
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      hintText: "Enter your password"
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(left: 15.0, top: 20.0),
                    child: InkWell(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                          ),
                        ),
                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0, ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30.0),
                      

                    ),
                    child: GestureDetector(
                      onTap: (){
                        print("Login Button Clicked");
                      },
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold, 
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 40.0,),
                          Center(child: ImageIcon(AssetImage('assets/images/facebook.png'),),),
                          SizedBox(width: 30.0 ,),
                          Center(child: Text("Login with Facebook"),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "New to Spotify ?",
                  style: TextStyle(
                    
                  ),
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                )
                

              ],
            )


          ],
        )
      )
    );
  }
}