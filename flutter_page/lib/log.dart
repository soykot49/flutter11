import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Color.fromARGB(255, 64, 255, 207),
            ], begin: Alignment.topLeft, end: Alignment.centerRight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 46.0,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Welcome to a beautiful world",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // borderSide: BorderSide.none
                                ),
                                hintText: "Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // borderSide: BorderSide.none
                                ),
                                hintText: "Password",
                                prefixIcon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password?",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("Don't you have a account?"),
                          TextButton(
                              onPressed: () {},
                              child: Text("Sign up",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
