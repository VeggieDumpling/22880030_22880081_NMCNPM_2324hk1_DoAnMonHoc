import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'Sign up',
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
            // Image.asset(
            //   'assets/images/my_taxi_logo.png',
            //   height: 100,
            //   width: 200,
            // ),
            const SizedBox(
              height: 50,
            ),
            Form(
              //key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
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
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Phone number',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Verify',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Verification number',
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/home-screen');
                        },
                        child: const Text(
                          'Sign Up',
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/login-screen');
                        },
                        child: const Text(
                          'Login',
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
