import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/screen/home.dart';
import 'package:taskmanager/screen/registration.dart';
import 'package:taskmanager/screen/setpassword.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  Stack(
            children: [
              SvgPicture.asset("assets/images/background.svg",
              height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SafeArea(child: Center(
                      child: Text("Get Started Width",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decorationThickness: double.maxFinite,
                          decorationColor: Colors.black,
                        ),
                      ),
                    )
                    ),
                    SizedBox(),
                    TextFormField(
                      validator: (value){},
                      decoration: InputDecoration(
                        enabledBorder: (
                        OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        )
                        )
                      ),
                      controller: email,
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: (
                              OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(Radius.circular(10))
                              )
                          )
                      ),
                      controller: email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 1000,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                          },
                          child: Icon(Icons.arrow_circle_right_outlined, size: 30,),

                        style: ElevatedButton.styleFrom(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const setpassword(),
                      ),
                      );
                    },
                      child: Text('Forget Password?',style: TextStyle(color: Colors.grey),) ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?", style: TextStyle(fontWeight: FontWeight.bold),),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const registration(),
                              ),
                              );
                            },
                            child: Text("Sign Up", style: TextStyle(color: Colors.blue),))
                      ],
                    ),
                   ],
                ),
              )
             ],
          ),

      ),
    );
  }
}
