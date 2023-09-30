import 'dart:ui';

import 'package:aplication/Pages/UserProfile_page.dart';

import 'package:flutter/material.dart';

class RegisterForm_page extends StatefulWidget {
  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterForm_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color.fromRGBO(224, 223, 224, 1.0),
              width: 2.0,
            ),
            borderRadius: BorderRadius.zero,
            image: DecorationImage(
              image: AssetImage('assets/wwwroot/fundo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.center,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 0.0,
                      sigmaY: 0.0,
                    ),
                    child: Container(
                      width: 450,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50.0),
                              child: Text(
                                'Sign-up',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 380,
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250, 238, 252, 1),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 380,
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250, 238, 252, 1),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 380,
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250, 238, 252, 1),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 380,
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250, 238, 252, 1),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserProfile_page(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(150, 119, 255, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: const Size(300, 60),
                      ),
                      child: const Text(
                        'Sign-up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'You have an account? ',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Log-in',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
