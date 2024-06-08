import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Center(
                    child: Image.asset(
                      'assets/images/logov1.png',
                      width: 300,
                      height: 300,
                      ),
                    ),
          ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              )
            ),
            child:    Padding(
              padding: const EdgeInsets.fromLTRB(20,50,20,50),
              child: Column( 
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Welcome', 
                    style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                  const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt \nut labore et.', 
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 60,
                        child: ElevatedButton( 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){}, 
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                       ),
                      ),
                      ),
                      const SizedBox(width: 20.0),
                      SizedBox(
                        width: 150,
                        height: 60,
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      onPressed: (){},
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
        ],
      )
    );
  }
}