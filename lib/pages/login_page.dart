import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      /* child: Center(
        child: Text("This is My Login Page!!",
           style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: AutofillHints.birthday
        ),),
      ), */
      child: Column(
        children: [
          Image.asset(
            "assets/images/office.png",
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: Text("Hello World"),
          ),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                decoration: InputDecoration(
                hintText:"Enter Username",
                labelText: "Username",
                ),
              ),
              TextFormField(
              obscureText: true,
              decoration: InputDecoration(
              hintText:"Enter password",
              labelText: "Password",
              ),
            ),
            SizedBox(
              height:20.0,
            ),

            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                print("Hello,This is Mirza!!");
              },
            )
          ],
        ),
      ),
          /* child:Text("Welcome to Login Page",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
          ) */
        ],
      ),
    );
  }
}