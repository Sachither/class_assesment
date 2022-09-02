import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0XFF6E9425),
          //safe area is placed to make content visible to users
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                //used to have the ability to design content
                Container(
                  margin: const EdgeInsets.only(top: 35, left: 40),
                  height: 14.2,
                  width: 20,
                  //used to show image in the container
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/Back.png'))),
                ),
                
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 114,
                        width: 116,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Vector.png'))),
                      ),
                      //give a space between two contents
                      const SizedBox(
                        height: 30,
                      ),

                      const Text(
                        'Get Notified',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),

                      const SizedBox(
                        height: 35,
                      ),

                      const Text(
                        'Receive notification when you get',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),

                      const Text(
                        'Celebrated',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),

                //center the last item on the image
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      'Get Started',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ]))),
    );
  }
}
