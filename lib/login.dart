import 'package:flutter/material.dart';

class LoginDesign extends StatelessWidget {
  final emailAddressController = TextEditingController(text: 'calendar_test@gmail.com');
  final passwordController = TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60.0,
                width: 300.0,
                child: TextField(
                  key: Key('email'),
                  controller: emailAddressController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 300.0,
                child: TextFormField(
                  key: Key('password'),
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                width: 300.0,
                child: ElevatedButton(
                  key: Key('login_btn'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.orange,
                    ),
                  ),
                  onPressed: () {
                    print('Text field input - ${emailAddressController.text}');

                  },
                  child: Text(
                    'Login',
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