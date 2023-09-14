import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(224, 223, 224, 1.0), // Cor de fundo da tela
      body: Center(
        child: Container(
          width: 530,
          height: 690,
          decoration: BoxDecoration(
            color: Colors.white, // Cor de fundo do Container
            border: Border.all(
              color: const Color.fromRGBO(224, 223, 224, 1.0), // Cor da borda
              width: 2.0, // Largura da borda (pode ajustar conforme desejado)
            ),
            borderRadius: BorderRadius.zero, // Define bordas retas
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Center(
                  child: Align(
                    alignment: const Alignment(0, 0.5),
                    child: Text(
                      'Spiice',
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Adicione a ação desejada aqui
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(150, 119, 255, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: const Size(300, 60),
                      ),
                      child: const Text(
                        'Discover the platform',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'You have an account? Log-in',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
