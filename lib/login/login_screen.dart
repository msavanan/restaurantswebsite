import 'package:flutter/material.dart';
import 'package:restaurantswebsite/login/login_text_field.dart';
import 'email_validator.dart';

class LoginPage extends StatefulWidget {
  final bool setPage;
  LoginPage({this.setPage = false});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: Form(
          key: _formKey,
          autovalidateMode:
              AutovalidateMode.onUserInteraction,
          child: Container(
            width: 500,
            margin:
                EdgeInsets.all(widget.setPage ? 80 : 100),
            padding: EdgeInsets.all(50),
            /*decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent)
              ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.stretch,
              children: [
                LoginTextField(
                  hintTxt: 'E-mail',
                  icon: Icon(Icons.email),
                  validator: emailValidator,
                  onSaved: (email) => _email = email,
                ),
                SizedBox(height: 10),
                LoginTextField(
                  hintTxt: 'Password',
                  obscureTxt: true,
                  icon: Icon(Icons.lock),
                  validator: (password) =>
                      password.isEmpty ? '*Required' : null,
                  onSaved: (password) =>
                      _password = password,
                ),
                widget.setPage
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          LoginTextField(
                            hintTxt: 'Contact Number',
                            obscureTxt: true,
                            icon: Icon(Icons.phone_android),
                            validator: (password) =>
                                password.isEmpty
                                    ? '*Required'
                                    : null,
                            onSaved: (password) =>
                                _password = password,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    : SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {}
                  },
                  child: Text("Login"),
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
