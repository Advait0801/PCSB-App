import 'package:flutter/material.dart';
import 'package:pcsb_app/constants.dart';
import 'package:pcsb_app/gallery_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.start,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your username',
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: kBlueShade))
                    ),
                    child: const Icon(
                      Icons.email_outlined,
                      color: kBlueShade,
                    ),
                  )
                )
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.start,
                obscureText: _passwordVisible ? false : true,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password',
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: const BoxDecoration(
                        border: Border(right: BorderSide(color: kBlueShade))
                    ),
                    child: const Icon(
                      Icons.lock,
                      color: kBlueShade,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility,color: kBlueShade),
                    onPressed: (){
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  )
                )
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              TextButton(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kBlueShade,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width*0.1,
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, GalleryScreen.id);
                },
              )
            ],
          ),
        ),
      )
    );
  }
}
