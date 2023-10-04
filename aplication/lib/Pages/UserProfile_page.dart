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
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: user != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('First Name: ${user.firstName}'),
                  Text('Last Name: ${user.lastName}'),
                  Text('Email: ${user.email}'),
                  // Adicione mais campos conforme necessário
                ],
              )
            : Text('User data not available.'),
      ),
    );
  }
}
