//import 'package:advance_form/model.dart/data.dart';
import 'package:advance_form/soal_prioritas2/home_page.dart';
import 'package:advance_form/soal_prioritas2/update_delete_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const UpdateDeletePage(),
          ),
          (route) => false);
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: ListView(
            children: [
              Row(
                children: const [
                  Text('Username'),
                ],
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.length < 4) {
                    return 'Enter at least 4 caracters';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                  Text('Email'),
                ],
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (email) {
                  if (email != null && !EmailValidator.validate(email)) {
                    return 'Enter a Email valid';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Text('Password'),
                ],
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.length < 5) {
                    return 'Enter min. 5 Caracters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                /* style: ElevatedButton.styleFrom(
                minimumSize: const Size(400, 50),
                shape: RoundedRectangleBorder(   
                  borderRadius: BorderRadius.circular(5),
                ),
              ), */
                onPressed: () {
                  final isValidForm = formKey.currentState!.validate();
                  String username = _usernameController.text;
                  if (isValidForm) {
                    loginData.setBool('login', false);
                    loginData.setString('username', username);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UpdateDeletePage(),
                        ),
                        (route) => false);
                  }
                  //final username = _usernameController.text;
                  //final password = _passwordController.text;
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
