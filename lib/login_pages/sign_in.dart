import 'package:collegemanagmentsystem/homepage.dart';
import 'package:collegemanagmentsystem/login_pages/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../model.dart';

class signin extends StatefulWidget {
  final List<imageModel> data;
  const signin({Key? key, required this.data}) : super(key: key);

  @override

  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:    SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
                height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(model[7].image),
                      fit: BoxFit.cover
                    ),
                  ),
                  child:Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 300, bottom: 0,right: 12),
                          child: Form(
                            key: _formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Container(

                                    height: 80,
                                    child: Text("Sign In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusColor: Colors.orangeAccent,
                                      border: OutlineInputBorder(),
                                      labelText: 'Enter Email',
                                      prefixIcon: Icon(Icons.email)),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    // Regular expression for email validation
                                    final emailRegex = RegExp(r'^[a-zA-Z0-9][a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                                    if (!emailRegex.hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _email = value!;
                                  },

                                ),


                                Text(""),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusColor: Colors.orangeAccent,
                                      border: OutlineInputBorder(),
                                      labelText: 'Enter Password',
                                      prefixIcon: Icon(Icons.lock)),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value.length < 7) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _password = value!;
                                  },
                                ),
                              Text(""),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      // Form is validated, do something with the data
                                      print('Form validated');
                                      print('Email: $_email, Password: $_password');
                                      // Navigate to the next page here
                                    } else {
                                      // Form validation failed
                                      print('Form validation failed');
                                    }
                                  },
                                  child: Text('Submit'),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => homepage(data: widget.data)),
                                      );
                                    },
                                    child: Text(
                                      "Forgot Password",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                signup(data: widget.data)),
                                      );
                                    },
                                    child: Text(
                                      "New Registration",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    )),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
        ),
    ),
    );
  }
}
