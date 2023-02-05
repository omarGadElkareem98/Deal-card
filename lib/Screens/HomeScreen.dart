

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'DrawerScreen.dart';
import 'ShoesDetails.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    CollectionReference products = FirebaseFirestore.instance.collection('products');
    return  SafeArea(

      child: Scaffold(

    appBar: AppBar(
      title: Text(
        'Deal',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.amber,
          fontSize: 33


        ),
      ),
      backgroundColor: Colors.black,
      elevation: 0,
    ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Image.asset('images/back.webp'),
              ),

              SizedBox(height: 40,),

              SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 160,
                              height: 160,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 200,
                               height: 200,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            Positioned(
                                top: 30,
                                right: 20,
                                left: 20,
                                child: Image.asset('images/shoes.jpg',height: 100,)
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [

                            Container(
                              width: 150,
                              height: 150,

                              child: Card(

                                elevation: 10,
                                color: Colors.black,
                              ),

                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return ShoesDetils();
                                } ),);
                              },
                              child: Positioned(
                                  top: 30,
                                  right: 20,
                                  left: 20,
                                  child: Image.asset('images/shoes.jpg',height: 100,)
                              ),
                            ),
                            Positioned(
                                top: 50,
                                right: 50,
                                left: 30,
                                child: Text('Sohes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),






      )
    );
  }
}
