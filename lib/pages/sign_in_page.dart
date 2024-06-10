import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Container(
        color: Colors.amber[600],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 40),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do tempor',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 330,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey.shade100,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Username',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            focusColor: Colors.amber[600]),
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey.shade100,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          focusColor: Colors.amber[600],
                        ),
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        obscureText: true,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 15, 15),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInPage()));
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
               Expanded(
                 child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                               color: Colors.grey.shade100,
                               alignment: Alignment.center,
                               child: Column(
                  children: [
                    ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black),
                                onPressed: () {
                 
                                },
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5,10,0,10),
                                      child: Image(
                                      image: AssetImage('assets/images/google.png'),
                                      width: 40,
                                                                         ),
                                    ),
                                   Expanded(
                                     child: Center(
                                       child: Text(
                                                                       'Continue with Google',
                                                                       style: TextStyle(
                                          fontSize: 17, fontWeight: FontWeight.bold),
                                                                       ),
                                     ),
                                   ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5,10,0,10),
                                    child: Icon(Icons.arrow_forward, color: Colors.black),
                                  )
                                  ],
                                )
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black),
                                onPressed: () {
                 
                                },
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5,10,0,10),
                                      child: Image(
                                      image: AssetImage('assets/images/facebook.png'),
                                      width: 40,
                                                                         ),
                                    ),
                                   Expanded(
                                     child: Center(
                                       child: Text(
                                                                       'Continue with Facebook',
                                                                       style: TextStyle(
                                          fontSize: 17, fontWeight: FontWeight.bold),
                                                                       ),
                                     ),
                                   ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5,10,0,10),
                                    child: Icon(Icons.arrow_forward, color: Colors.black),
                                  )
                                  ],
                                )
                              ),
                  ],
                               ),
                             ),
               ),
          ],
        ),
      ),
    );
  }
}
