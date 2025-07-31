import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(child: Image.asset('assets/ficon.png')),
              const Text(
                'Welcome Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const Text('Lets login togather!'),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white10),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white10),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 200),
                child: Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
              ),

              const SizedBox(height: 200),
              Container(

                width: 300,
                height: 50,
                color: Colors.green,
                child: const Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
