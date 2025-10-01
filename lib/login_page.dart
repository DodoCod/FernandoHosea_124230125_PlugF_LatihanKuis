import 'package:flutter/material.dart';
import 'dart:developer'; 
import 'home_page.dart'; // Impor ini sekarang akan digunakan

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool loginBerhasil = false;
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade400, Colors.blue.shade800],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.directions_car,
                        size: 80,
                        color: Colors.blue.shade700,
                      ),
                      const SizedBox(height: 20,),
                      Text("Vehicle Menu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade800
                      ),
                      ),
                      const SizedBox(height: 30,),
                      _usernameField(),
                      const SizedBox(height: 16),
                      _passwordField(),
                      const SizedBox(height: 24),
                      _loginButton(context),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      enabled: true,
      controller: _username,
      decoration: InputDecoration(
        labelText: 'Username',
        prefixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      controller: _password,
      obscureText: _obscure,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            _obscure ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscure = !_obscure;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {
          String text = "";
          if (_username.text == "") {
            setState(() {
              text = "Silahkan Input Username Anda";
            });
          } else if (_password.text == "") {
            setState(() {
              text = "Password Anda Kosong Silahkan Input Password anda";
            });
          } else if (_username.text == "adit" && _password.text == "123") {
            setState(() {
              text = "Login Berhasil";
              loginBerhasil = true;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => MyHomePage(username: _username.text,)),
            );
          } else {
            setState(() {
              text = "Login Gagal";
              loginBerhasil = false;
            });
          }
          log("Login Berhasil: $loginBerhasil");
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }
}