import 'package:flutter/material.dart';
import 'package:sigma/constants/graphics.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _mainLogoSection(context),
            _loginFormLayout(context),
          ],
        ),
      ),
    );
  }

  Widget _mainLogoSection(BuildContext context) {
    return Container(
      child: mainGraphics.mainLogo,
      height: 300,
    );
  }

  Widget _loginFormLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _usernameField(context),
        SizedBox(height: 8),
        _passwordField(context),
        SizedBox(height: 48),
        _loginButton()
      ],
    );
  }

  Widget _usernameField(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.caption,
      decoration: InputDecoration(
          icon: Icon(Icons.person, color: Theme.of(context).accentColor),
          hintText: 'Username'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextFormField(
      obscureText: true,
      style: Theme.of(context).textTheme.caption,
      decoration: InputDecoration(
          icon: Icon(Icons.security, color: Theme.of(context).accentColor),
          hintText: 'Password'),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
        onPressed: () {},
        child: Text('Sign In'),
        style: ElevatedButton.styleFrom(fixedSize: Size(240, 50)));
  }
}
