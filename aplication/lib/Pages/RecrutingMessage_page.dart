import 'package:aplication/Pages/ListMessage_page.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:aplication/Service/UserCache.dart';
import 'package:aplication/Service/UserMessageCache.dart';
import 'package:aplication/Models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecrutingMessage_page extends StatefulWidget {
  @override
  _RecrutingMessage_page createState() => _RecrutingMessage_page();
}

class _RecrutingMessage_page extends State<RecrutingMessage_page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  TextEditingController mensagemController = TextEditingController();

  String? mensagem;

  @override
  void initState() {
    super.initState();
    final userMessageCache = context.read<UserMessageCache>();
  }

  @override
  Widget build(BuildContext context) {
    final userMessageCache = Provider.of<UserMessageCache>(context);
    final userMessage = userMessageCache.getUser();

    final userCache = Provider.of<UserCache>(context);
    final user = userCache.getUser();

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 247, 255),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
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
                              'assets/wwwroot/mar.jpg',
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
                        "  Make a proposition",
                        style: TextStyle(
                          fontSize: 34.0,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 13.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            width: 432.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromRGBO(250, 238, 252, 1.0),
                            ),
                            child: Form(
                              key: _formKey,
                              autovalidateMode: _autovalidateMode,
                              child: SingleChildScrollView(
                                child: TextFormField(
                                  key: Key('mensagem'),
                                  controller: mensagemController,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter something to send';
                                    }
                                    if (value.length < 12) {
                                      return 'Enter at least 12 characters';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    mensagem = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 120.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 81.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _autovalidateMode = AutovalidateMode.always;
                              });

                              if (_formKey.currentState!.validate()) {
                                final userMessageCache =
                                    Provider.of<UserMessageCache>(context,
                                        listen: false);
                                if (user != null) {
                                  userMessageCache.updateUserMessage(
                                    mensagemController.text,
                                    '${user.firstName} ${user.lastName}',
                                  );
                                  userMessageCache.notifyListeners();
                                }

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ListMessage_page(),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(150, 119, 255, 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              minimumSize: const Size(300, 60),
                            ),
                            child: const Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
