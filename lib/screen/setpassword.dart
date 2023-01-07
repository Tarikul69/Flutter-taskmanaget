import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/screen/login.dart';
import 'package:taskmanager/screen/pinverification.dart';

class setpassword extends StatefulWidget {
  const setpassword({Key? key}) : super(key: key);

  @override
  State<setpassword> createState() => _setpasswordState();
}

class _setpasswordState extends State<setpassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/background.svg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SafeArea(child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Email Address", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("A 6 digit verification pin will send to your email address", style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email"
                    ),
                  ),
                  SizedBox(height: 12,),
                  SizedBox(
                      height: 50,
                      width: 1000,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> pinverification(),
                        ),
                        );
                      }, child: Icon(
                          Icons.arrow_circle_right_outlined,
                      ),
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have account?", style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
                      }, child: Text("Sign in")),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
