import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/pages/login.dart';
import 'package:social_app/widgets/variables.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  registerUser()
  {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    ).then((signedUser){
      userCollection.doc(signedUser.user.uid).set({
        'username':usernameController.text.trim(),
        'email':emailController.text.trim(),
        'password':passwordController.text.trim(),
        'uId' : signedUser.user.uid,
        'profilePic' : 'https://www.searchpng.com/wp-content/uploads/2019/02/Men-Profile-Image-715x657.png',
      });
    });
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=>LoginPage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Social App',style: myStyle(30,Colors.orangeAccent,FontWeight.bold),
            ),


            SizedBox(
              height: 10,
            ),


            Text(
              'Registration',style: myStyle(25,Colors.black,FontWeight.w600),
            ),


            SizedBox(
              height: 20,
            ),


            //Starting of user Textfield
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  labelStyle: myStyle(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            //Ending of the user Textfield


            SizedBox(
              height: 10,
            ),


            //Starting of Email field
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  labelStyle: myStyle(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            //Ending of Email field


            SizedBox(
              height: 10,
            ),


            //Starting of password field
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  labelStyle: myStyle(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),
            //ending of password field


            SizedBox(
              height: 10,
            ),


            //Starting of register button

            InkWell(
              onTap: (){
                registerUser();
              },
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text('Register',style: myStyle(20,Colors.white,FontWeight.w600),),
                ),
              ),
            ),

            //Ending of the register button


            SizedBox(
              height: 10,
            ),


            //Starting of the navigation process
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Have An Account',style: myStyle(16),),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>LoginPage()
                    ));
                  },
                  child: Text(
                    'Login',style: myStyle(16,Colors.black),
                  ),
                ),

              ],
            ),
            //ending of the navigation process

          ],
        ),
      ),
    );
  }
}
