import 'package:flutter/material.dart';

import '../widgets/long_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 19,
                        child: CircleAvatar(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          radius: 16,
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  "Hello, Welcome Back",
                  style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Happy to see you again, to use your account please login first",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Email Addres",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password    ",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.purple[400],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                LongButton(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          result: const HomeScreen(),
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    buttonText: "Login"),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 100,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Or Login with",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 100,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/GoogleLogo.png",
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 32.0,
                    ),
                    Image.asset(
                      "assets/icons/AppleLogo.png",
                      width: 22.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 32.0,
                    ),
                    Image.asset(
                      "assets/icons/FacebookLogo.png",
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
