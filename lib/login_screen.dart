import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/my_taxi_logo.png',
              height: 100,
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              //key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your username',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                    ),
                    obscureText: true,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Please enter your password';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _password = value!;
                    // },
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {
                          //   _formKey.currentState.save();
                          //   print('Username: $_username');
                          //   print('Password: $_password');
                          // }
                        },
                        child: const Text(
                          'Login',
                          // style: TextStyle(
                          //   color: Colors.teal,
                          // ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/signup-screen');
                        },
                        child: const Text(
                          'Sign Up',
                          // style: TextStyle(
                          //   color: Color.fromARGB(150, 255, 255, 255),
                          // ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
