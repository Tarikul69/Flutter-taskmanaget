import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/screen/login.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body:  Stack(
          children: [
            SvgPicture.asset(
              "assets/images/background.svg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Padding(
                padding:  EdgeInsets.all(32.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Join With Us", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 20,),
                    TextField(
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email"
                        ),
                      ),
                    SizedBox(height: 12,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "First Name"
                      ),
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Last Name",
                      ),
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          hintText: "Mobile"
                      ),
                    ),
                    SizedBox(height: 12,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password"
                      ),
                    ),
                    SizedBox(height: 12,),
                    SizedBox(
                      height: 50,
                        width: 1000,
                        child: ElevatedButton(
                            onPressed: (){},
                            child: Icon(Icons.arrow_circle_right_outlined),
                        ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Have account?", style: TextStyle(fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()
                          ),
                          );
                        }, child: Text("Sign in"),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
       ),
    );
  }
}
