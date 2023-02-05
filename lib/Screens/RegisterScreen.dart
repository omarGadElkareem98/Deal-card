
import 'package:deal/Screens/HomeScreen.dart';
import 'package:deal/Screens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);


  String ?email;
  String ?password;
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: FormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Center(child: Text("New Account",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                  SizedBox(height: 10,),
                  Text('Code will be sent to confirm your account'),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (data){
                      if(data!.isEmpty){
                        return "Enter your Name  ";
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return    LoginScreen();
                        } ),);

                      }

                    },
                    onChanged: (data){
                      email = data;
                    },

                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: TextStyle(color: Colors.black),

                        enabledBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),

                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (data){
                      if(data!.isEmpty){
                        return "Enter your Email  ";
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        } ), );
                      }

                    },
                    onChanged: (data){
                      email = data;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email Adress',
                        hintStyle: TextStyle(color: Colors.black),

                        enabledBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(

                    validator: (data){
                      if(data!.isEmpty){
                        return "Enter your phone Number  ";
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        } ), );
                      }
                    },

                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(

                        hintText: 'Phone Namber',
                        hintStyle: TextStyle(color: Colors.black),

                        enabledBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (data){
                      if(data!.isEmpty){
                        return "Enter your Pass  ";
                      }
                    },
                    onChanged: (data){
                      password = data;
                    },

                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.black),

                        enabledBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,

                    child: MaterialButton(onPressed: ()async{
                        if(FormKey.currentState!.validate()){

                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginScreen();
                          } ), );

                       try{
                         var auth = FirebaseAuth.instance;
                         UserCredential user =  await   auth.createUserWithEmailAndPassword(email: email!, password: password!);

                       } catch (ex){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar
                        (content: Text('${ex.toString()}'),
                        backgroundColor: Colors.red
                        ,),);
                       }

                        }
                    },
                      color: Colors.amber,

                      child: Text("Register",
                        style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic),

                      )

                      ,),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IF you  have an account",
                        style: TextStyle(fontSize: 15.0,color: Colors.black),
                      ),
                      MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginScreen();
                        }));
                      },
                        child: Text("Sign in",
                          style: TextStyle(fontSize: 17.0,color: Colors.blueAccent),
                        ),)
                    ],
                  ),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  },
                    child: Text("Skip",
                      style: TextStyle(fontSize: 17.0,color: Colors.black,),
                    ),)

                ],
              ),
            ),
          ),
        )
    );
  }
}
