import 'package:aplication/RouteGenerator.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Service/UserMessageCache.dart'; // Importe o serviço UserMessageCache
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserCache()),
        ChangeNotifierProvider(create: (_) => UserMessageCache()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    ),
  );
}
