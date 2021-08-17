import 'package:admob_flutter/admob_flutter.dart';
import 'package:exemplifica_git/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
  // Initialize without device test ids
Admob.initialize();

runApp(ScreenExemplifica());
}

class ScreenExemplifica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),      
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
    
  }

  void splashScreen() {
    Future.delayed(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(image: AssetImage('images/splashapp.png'),
            fit: BoxFit.cover),
          ),
          Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .8,
                child: Image(image: AssetImage('images/exemplo_3.png'),
                  ),
                )
              ],
            )          
          ), 
        ],            
    );
  }
}