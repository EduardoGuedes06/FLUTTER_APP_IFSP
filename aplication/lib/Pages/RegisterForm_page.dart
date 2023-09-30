import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:aplication/Pages/UserProfile_page.dart';

class RegisterForm_page extends StatefulWidget {
  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterForm_page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? firstName;
  String? lastName;
  String? email;
  String? password;

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              // ...resto do seu código de decoração
              ),
          child: Form(
            key: _formKey,
            autovalidateMode: _autovalidateMode, // Configura o autovalidateMode
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
                        height: 425,
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
                                padding: EdgeInsets.only(top: 20.0),
                                child: Text(
                                  'Sign-up',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Flexible(
                                child: Container(
                                  width: 380,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 238, 252, 1),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'First Name',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      firstName = value;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Flexible(
                                child: Container(
                                  width: 380,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 238, 252, 1),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Last Name',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your last name';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      lastName = value;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Flexible(
                                child: Container(
                                  width: 380,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 238, 252, 1),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      email = value;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Flexible(
                                child: Container(
                                  width: 380,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 238, 252, 1),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      password = value;
                                    },
                                  ),
                                ),
                              )
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
                          // Altera o autovalidateMode para validar automaticamente
                          setState(() {
                            _autovalidateMode = AutovalidateMode.always;
                          });

                          if (_formKey.currentState!.validate()) {
                            // Se o formulário for válido, navegue para a próxima página
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => UserProfile_page(),
                              ),
                            );
                          }
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
                            'Already have an account? ',
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
      ),
    );
  }
}
