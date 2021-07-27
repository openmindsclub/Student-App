import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mobile_frontend/models/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _emailAdress = GlobalKey<FormFieldState<String>>();
  final _password = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Container(
            padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
            child: Text(
              'Connexion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: Color(0xff43B485),
          elevation: 0.0,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Stack(children: [
                Column(
                  children: [
                    Expanded(
                      flex: 11,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff43B485),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18.0),
                              bottomRight: Radius.circular(18.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    key: _emailAdress,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                          borderSide: new BorderSide(),
                                        ),
                                        hintText: 'exp: exemple@gmail.com',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    key: _password,
                                    obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                        borderSide: new BorderSide(),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        print(_emailAdress.currentState.value);
                                        if (_emailAdress.currentState.value.isEmpty) {
                                          print('Please enter an email');
                                        } else{
                                          bool myemail = User.checkEmail(_emailAdress.currentState.value);
                                          if (myemail){
                                            print('good email');
                                          } else {
                                            print('this is not an email');
                                          }
                                          var user = await User.login(_emailAdress.currentState.value, _password.currentState.value);
                                          print(user);
                                          if(user == 404 || user == 401){
                                            // 404 means the email doesn't exist and 401 the passwords don't match, I'll change the return later in fonction of what we need
                                            // on affiche une alert box pour dire que l'utilisateur ne peux pas se connecter
                                            print("I'm asking you to register or login");
                                          } else {
                                            print("user authentified");
                                            print(user.email + " " + user.id);
                                            // push to dashboard
                                            Navigator.popAndPushNamed(context, '/dashboard');
                                          }
                                        }
                                      },
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: BorderSide(color: Color(0xff43B485))
                                        ),
                                        backgroundColor: Color(0xff43B485),
                                      ),
                                      child: Text(
                                        "Connexion",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  "I don't have an account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "I Forgot my Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
