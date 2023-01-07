import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pinverification extends StatefulWidget {
  const pinverification({Key? key}) : super(key: key);

  @override
  State<pinverification> createState() => _pinverificationState();
}

class _pinverificationState extends State<pinverification> {
  //TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/background.svg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(child: Padding(
                  padding: EdgeInsets.fromLTRB(32, 5, 32, 5),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PIN Verification", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      Text("A six digit verification pin will send to your email address"),

                    ],

                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PinCodeTextField(
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.blue.shade50,
                        enableActiveFill: true,
                        //controller: textEditingController,
                        onCompleted: (v) {
                          print("Completed");
                        },

                        appContext: context, onChanged: (String value) {  },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: (){}, child:
                    Text("Verify"),
                    ),
                ),
                Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Have account?", style: TextStyle(fontWeight: FontWeight.bold,),),
                        TextButton(onPressed: (){}, child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold,),),
                        ),
                      ],
                    )
                  ],
                )
              ],

            ),

          ],
        ),
      ),
    );
  }
}
