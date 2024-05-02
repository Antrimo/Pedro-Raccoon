import 'package:flutter/material.dart';
import 'package:raccoon/Pages/register.dart';
import 'package:raccoon/raccoon.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText1 = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 37.0),
              SizedBox(
                width: 310,
                height: 50,
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 310, // Custom width
                height: 50, // Custom height
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText1
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText1 = !_obscureText1;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              const Text("Forgot Password?"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Raccoon();
                        },
                      ),
                    );
                  }
                },
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(52, 51, 56, 0.494),
                        blurRadius: 10,
                        offset: Offset(0, 7),
                      ),
                    ],
                    color: Color.fromRGBO(85, 81, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const RegisterPage();
                          },
                        ),
                      );
                    },
                    child: const Text("Register"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
