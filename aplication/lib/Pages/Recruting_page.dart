import 'package:aplication/Models/UserMessage.dart';
import 'package:aplication/Pages/ListMessage_page.dart';
import 'package:aplication/Pages/RegisterForm_page.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:aplication/Pages/RecrutingMessage_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Service/UserMessageCache.dart';
import 'package:aplication/Models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Recruting_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCache = Provider.of<UserCache>(context);
    final UserMessage = userCache.getUser();

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 247, 255),
          ),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                top: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color.fromRGBO(171, 165, 175, 1.0),
                            size: 30.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(171, 165, 175, 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/wwwroot/mar.jpg',
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arlene Micknney',
                              style: TextStyle(
                                fontSize: 34.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      "Posted 3 days ago",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
                      ),
                    ),
                    Text(
                      "Create an application",
                      style: TextStyle(
                        fontSize: 34.0,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      "We are a young startup trom Paris looking.\nfor a designer who can help us design a\ntech oriented application, We are open to\nproposals,\nYou can saw our project here;\nhitpi//wworzotware.com,\nWe are working with Figma and Photoshop.",
                      style: TextStyle(
                        fontSize: 20.0,
                        height: 1.5,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '16 propositions',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromRGBO(171, 165, 175, 1.0),
                          ),
                        ),
                        Text(
                          '\$ 2400     ',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(150, 131, 220, 1.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          height: 30.0,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Color.fromRGBO(171, 165, 175, 1.0),
                              width: 2.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'UX/UI',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 78.0,
                          height: 30.0,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Color.fromRGBO(171, 165, 175, 1.0),
                              width: 2.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'DESIGN',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 75.0,
                          height: 30.0,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Color.fromRGBO(171, 165, 175, 1.0),
                              width: 2.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'FIGMA',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 110.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Color.fromRGBO(171, 165, 175, 1.0),
                              width: 2.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'PHOTOSHOP',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100.0),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 81.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RecrutingMessage_page(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(150, 119, 255, 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              minimumSize: const Size(300, 60),
                            ),
                            child: const Text(
                              'Make a proposition',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(222, 218, 245, 1.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 30.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 38.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.crop_square_outlined,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(150, 131, 220, 1.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: '',
            ),
          ],
          onTap: (int index) {
            if (index == 3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserProfile_page(),
                ),
              );
            }
            if (index == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ListMessage_page(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
