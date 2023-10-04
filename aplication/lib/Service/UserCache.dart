import 'package:flutter/material.dart';
import 'package:aplication/Models/User.dart';

class UserCache extends ChangeNotifier {
  final List<User> _users = [];

  void updateUser(
      String firstName, String lastName, String email, String password) {
    final user = User(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    );
    if (_users.isNotEmpty) {
      _users[0] = user;
    } else {
      _users.add(user);
    }
    notifyListeners();
  }

  User? getUser() {
    if (_users.isNotEmpty) {
      return _users.first;
    }
    return null;
  }

  int get userCount {
    return _users.length;
  }
}
