import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:aplication/Models/User.dart';
import 'package:provider/provider.dart';
import '../Service/UserCache.dart';

class RegisterForm_page extends StatefulWidget {
  @override
  _RegisterForm_page createState() => _RegisterForm_page();
}

class _RegisterForm_page extends State<RegisterForm_page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FormValidationService _formValidationService = FormValidationService();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? firstName;
  String? lastName;
  String? email;
  String? password;

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    final userCache = context.read<UserCache>();
  }

  @override
  Widget build(BuildContext context) {
    final userCache = context.watch<UserCache>();
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
              colorFilter: ColorFilter.mode(
                Color.fromARGB(249, 214, 176, 245).withOpacity(0.1),
                BlendMode.darken,
              ),
            ),
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
                                    controller: firstNameController,
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
                                    controller: lastNameController,
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
                                    controller: emailController,
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
                                    controller: passwordController,
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
                          setState(() {
                            _autovalidateMode = AutovalidateMode.always;
                          });

                          if (_formKey.currentState!.validate()) {
                            final userCache =
                                Provider.of<UserCache>(context, listen: false);

                            userCache.updateUser(
                                firstNameController.text,
                                lastNameController.text,
                                emailController.text,
                                passwordController.text);

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

class FormValidationService {
  String? validateFirstName(String value) {
    if (value.isEmpty) {
      return 'Please enter your first name';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Only letters allowed';
    }
    return null;
  }

  String? validateLastName(String value) {
    if (value.isEmpty) {
      return 'Please enter your last name';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Only letters allowed';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter an email address';
    } else if (value.length > 50) {
      return 'Maximum 50 characters';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 12 ||
        !RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*()_+{}|:;<>,.?~]).{12,}$')
            .hasMatch(value)) {
      return 'Must contain at least 12 characters, with a number and a special character';
    }
    return null;
  }
}
