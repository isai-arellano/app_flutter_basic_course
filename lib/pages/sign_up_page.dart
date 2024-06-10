import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
      ),
      body: Container(
        color: Colors.amber[600],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Sign Up',
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
            Expanded(
              child: Container(
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
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade100,
                        ),
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Confirm Password',
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
                      const SizedBox(height: 15),
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
                                },
                                child: const Text(
                                  'Register',
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
            ),
          ],
        ),
      ),
    );
  }
}