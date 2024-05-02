import 'package:flutter/material.dart';
import 'package:raccoon/Pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                    'Registration',
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
                width: 310, // Custom width
                height: 50, // Custom height
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
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
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter your email';
                  //   } else {
                  //     return 'Please enter a valid email';
                  //   }
                  // },
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 310, // Custom width
                height: 50, // Custom height
                child: TextFormField(
                  controller: _contactController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Contact',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your contact number';
                    }
                    return null;
                  },
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
              SizedBox(
                width: 310, // Custom width
                height: 50, // Custom height
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText2
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText2 = !_obscureText2;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please confirm your password';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              const Text("I agree to Terms of Service and Privacy Policy"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const LandingPage(),
                    //   ),
                    // );
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
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text("_________________ OR _________________"),
              const SizedBox(height: 20.0),
              const Text("Register with"),
              const SizedBox(height: 9.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    // child: Image.asset("assets/google.png"),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    // child: Image.asset("assets/apple.png"),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text("Login"),
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
