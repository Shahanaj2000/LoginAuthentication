import 'package:flutter/material.dart';
import 'package:login_authentication/components/my_TextFeilds.dart';
import 'package:login_authentication/components/my_buttons.dart';
import 'package:login_authentication/components/square_tile.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  // Text Editing Controllers
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  //SignIn method

  void signUserIn () {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(
                height: 50,
              ),
              //! logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

              //! welcome back, you've been missed!

                Text(
                  "Welcome back, You've been missed!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),

                const SizedBox(height: 25,),
              
              //! Username TextFeild
                MyTextFeilds(
                  conroller: _usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ), 
                
                const SizedBox(height: 10,),
              //! Password TextFeild
                MyTextFeilds(
                  conroller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10,),
              
              //! Forget password?

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    Text(
                      "ForgetPassword?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25,),

              
              //! Sign in button

              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50,),
              
              //! or continue with

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                                "Or Continue With",
                             style: TextStyle(
                            color: Colors.grey[700],
                          ),
                         ),
                      ),


                    Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                     ),
                    ),


                    
                  ],
                ),
              ),

              
              const SizedBox(height: 50,),
              
              
              //! Google + Apple SignIn

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //For Google
                    SquareTile(imagePath: 'assets/Googlelogo.webp'),

                     SizedBox(width: 10,),

                  //Foro Apple

                    SquareTile(imagePath: 'assets/applelogo.webp'),
                ],
              ),

              const SizedBox(height: 50,),
              
              //! not a member register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "not a member? ",
                  ),

                  Text(
                    "Register now", 
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}