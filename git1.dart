// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

bool isSecured = true;

Map<String, User> users = {
  "bassam@gmail.com": User(email: 'bassam@gmail.com', password: '1234'),
  "anas@gmail.com": User(email: 'anas@gmail.com', password: 'a123'),
};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'data:image/jpeg;base64,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',
              width: 350,
              height: 350,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text('Enter Email'),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isSecured,
                    decoration: InputDecoration(
                      label: Text('Enter password'),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured = !isSecured;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      User user = users[emailController.text]!;
                      if (user.email == emailController.text &&
                          user.password == passwordController.text) {
                        print('logged');
                      } else {
                        print('email or password is wrong');
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
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
