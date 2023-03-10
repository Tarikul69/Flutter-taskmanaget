import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/screen/login.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstnameTEController = TextEditingController();
  final TextEditingController _lastnameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/background.svg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Join With Us",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter Your Emain";
                        }
                      },
                      controller: _emailTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Email"),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter Your First Name";
                        }
                      },
                      controller: _firstnameTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "First Name"),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter Your Last Name";
                        }
                      },
                      controller: _lastnameTEController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Last Name",
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter Your Mobile Number";
                        }
                      },
                      controller: _phoneTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Mobile"),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter Your Password";
                        }
                      },
                      controller: _passwordTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Password"),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 50,
                      width: 1000,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Have account?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const login()),
                            );
                          },
                          child: const Text("Sign in"),
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
