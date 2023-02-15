import 'package:flutter/material.dart';
//import 'package:modern_ui_login_page/pages/home_page.dart';
import '../../components/my_button.dart';
import '../../components/my_button_register.dart';

import '../../components/my_textfiled.dart';
// import '../../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text edtiting controllers
  final userNameController = TextEditingController();
  final passworrdController = TextEditingController();

  //Sign user in Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 232, 232),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                //logo
                const Icon(
                  color: Colors.redAccent,
                  Icons.health_and_safety,
                  size: 100,
                ),

                const SizedBox(
                  height: 50,
                ),

                //msg
                const Text("Garbh Shuraksha",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 29, 28), fontSize: 16)),

                const SizedBox(
                  height: 40,
                ),

                //username textfield
                MyTextField(
                  controller: userNameController,
                  hintTEXT: 'Username',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 15,
                ),

                //password field
                MyTextField(
                  controller: passworrdController,
                  hintTEXT: 'Password',
                  obscureText: true,
                ),

                const SizedBox(
                  height: 10,
                ),

                //forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //sign in button
                const MyButton(
                    // onTap: signUserIn,
                    ),

                const SizedBox(
                  height: 50,
                ),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                // google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    // SquareTile(imagePath: "lib/images/Google.png"),
                    SizedBox(
                      height: 50,
                      child: Image.asset(
                        "lib/images/Google.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),
                    //apple button
                    //SquareTile(imagePath: "lib/images/Apple.png")

                    SizedBox(
                      height: 50,
                      child: Image.asset(
                        "lib/images/Apple.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 45,
                ),

                //not a member register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Not a member?'),
                    SizedBox(
                      width: 5,
                    ),
                    // Text(
                    //   'Register now',
                    //   style: TextStyle(
                    //       color: Colors.blue, fontWeight: FontWeight.bold),
                    // ),
                    MyButton1(
                        // onTap: signUserIn,
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
