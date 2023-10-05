import 'package:flutter/material.dart';
import 'package:aplication/Models/UserMessage.dart';

class UserMessageCache extends ChangeNotifier {
  final List<UserMessage> _users = [];

  void updateUserMessage(String nome, String mensagem) {
    final user = UserMessage(Usuario: nome, Mensagem: mensagem);

    _users.add(user);
    notifyListeners();
  }

  UserMessage? getUser() {
    if (_users.isNotEmpty) {
      return _users.first;
    }
    return null;
  }

  int get userCount {
    return _users.length;
  }

  UserMessage? getUserAtIndex(int index) {
    if (index >= 0 && index < _users.length) {
      return _users[index];
    }
    return null;
  }
}
