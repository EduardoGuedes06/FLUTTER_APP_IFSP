import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Models/User.dart';

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
                  color: Color.fromARGB(249, 214, 176, 245).withOpacity(0.1),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.0, // Defina a altura desejada aqui
        decoration: BoxDecoration(
          color: Color.fromRGBO(222, 218, 245, 1.0),
          boxShadow: [], // Remova a sombra definindo uma lista vazia
        ),
        child: BottomNavigationBar(
          elevation: 0.0, // Defina a elevação como 0.0 para remover a sombra
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: 'Pesquisar',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Color.fromRGBO(222, 218, 245, 1.0),
              ),
              label: 'Notificações',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromRGBO(150, 131, 220, 1.0),
              ),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
