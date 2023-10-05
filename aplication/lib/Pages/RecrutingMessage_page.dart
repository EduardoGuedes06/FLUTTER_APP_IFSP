import 'package:aplication/Pages/RegisterForm_page.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecrutingMessage_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCache = Provider.of<UserCache>(context);
    final user = userCache.getUser();

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
                            'assets/wwwroot/fundo.jpg',
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
                    SizedBox(height: 45.0),
                    Text(
                      "Make a proposition",
                      style: TextStyle(
                        fontSize: 34.0,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    SizedBox(height: 100.0),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
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
                    )
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
          },
        ),
      ),
    );
  }
}
