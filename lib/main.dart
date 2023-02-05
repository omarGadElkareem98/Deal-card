
import 'package:deal/Screens/HomeScreen.dart';
import 'package:deal/Screens/LoginScreen.dart';
import 'package:deal/Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'Provider/AdminMode.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       FutureBuilder(
         future: Future.delayed(Duration(seconds: 2)),
         builder: (context , snapshot) {
         if(snapshot.connectionState == ConnectionState.waiting){
           return SplashScreen();
         } else{
           return MultiProvider(
             providers: [
              ChangeNotifierProvider<AdminMode>(create: (context)=>AdminMode())
             ],
             
             child: MaterialApp(
               debugShowCheckedModeBanner: false,
               home: LoginScreen(),
               localizationsDelegates: [

                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
               ],
               supportedLocales: [
                 Locale("en" , ""),
                 Locale("ar" , "")
               ],

               localeResolutionCallback: (currentLang , supportLang){
                 if(currentLang != null){
                   for(Locale? local in supportLang){
                     if(local?.languageCode == currentLang.languageCode){
                       return currentLang;
                     }
                   }
                 }
                 return supportLang.first;
               },

             ),
           );
         }
       } ,);

  }
}




