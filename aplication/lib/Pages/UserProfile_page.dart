import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCache = Provider.of<UserCache>(context);
    final user = userCache.getUser(); // Obtenha o usuário do UserCache

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
          ),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  color: Color.fromARGB(248, 197, 197, 197).withOpacity(0.1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Conteúdo do perfil
              Positioned.fill(
                top: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.0),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/wwwroot/fundo.jpg', // Caminho da imagem local
                            width:
                                80.0, // Ajuste o tamanho da imagem conforme necessário
                            height: 80.0,
                            fit:
                                BoxFit.cover, // Cobrir todo o espaço do círculo
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user != null
                                  ? (user.firstName.length +
                                              user.lastName.length <=
                                          16
                                      ? '${user.firstName} ${user.lastName}'
                                      : '${user.firstName} ${user.lastName}'
                                              .substring(0, 18) +
                                          '...')
                                  : 'TESTE',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'UxDesigner',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(171, 165, 175, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      "My name is Dustin, I'm a young designer \nfrom Dublin. I've been practicing for 4 years now\n and have worked with both small and large agencies.\nBlablabla",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.8,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '64 reviews',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Average rating        ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Last review',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
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
              blurRadius: 8.0,
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
                color: Color.fromRGBO(150, 131, 220, 1.0),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
