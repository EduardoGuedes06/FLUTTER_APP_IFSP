import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserMessageCache.dart';
import 'package:aplication/Models/UserMessage.dart';
import 'package:aplication/Pages/Recruting_page.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:aplication/Pages/RegisterForm_page.dart';

class ListMessage_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userMessageCache = Provider.of<UserMessageCache>(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 247, 255),
        ),
        child: Align(
          alignment: Alignment.centerLeft, // Alinhe à esquerda
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
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegisterForm_page(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'Formulario',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(171, 165, 175, 1.0),
                                ),
                              ),
                              Icon(
                                Icons
                                    .book, // Você pode alterar o ícone conforme necessário
                                color: Color.fromRGBO(171, 165, 175, 1.0),
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: userMessageCache.userCount,
                        itemBuilder: (context, index) {
                          final message =
                              userMessageCache.getUserAtIndex(index);

                          return ListTile(
                            title: Text(message!.Usuario),
                            subtitle: Text(message.Mensagem +
                                '     Responsed by: Arlene Micknney'),
                          );
                        },
                      ),
                    ),
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
                color: Color.fromRGBO(150, 131, 220, 1.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(222, 218, 245, 1.0),
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
            if (index == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Recruting_page(),
                ),
              );
            }
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
