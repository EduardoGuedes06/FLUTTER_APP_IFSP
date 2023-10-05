import 'package:aplication/Pages/ListMessage_page.dart';
import 'package:aplication/Pages/Recruting_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile_page extends StatelessWidget {
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
                            'assets/wwwroot/fundo.jpg',
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
                      "My name is Dustin, I'm a young designer \nfrom Dublin. I've been practicing for 4 years now\nand have worked with small and large agencies.\nBlablabla",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.8,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              'Average rating      ',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Color.fromRGBO(150, 119, 255, 1.0),
                              size: 24.0,
                            );
                          }),
                        ),
                      ],
                    ),
                    Text(
                      'Last review',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(171, 165, 175, 1.0),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Awesome job!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(250, 238, 252, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              minimumSize: Size(120, 45),
                            ),
                            child: Text(
                              'View all',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      '-Kyle Wilson',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    // Aqui adicionamos a nova coluna para o portfólio
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Portfólio',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/wwwroot/fundo.jpg',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/wwwroot/fundo.jpg',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/wwwroot/fundo.jpg',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ],
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
          onTap: (int index) {
            if (index == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Recruting_page(),
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
