import 'package:flutter/material.dart';
import 'package:task4/homeScreen.dart';
import 'package:task4/registerScreen.dart';

class Login extends StatelessWidget {

  final name =TextEditingController(); 
  Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: SingleChildScrollView(
        child:  Column(
          children: [

            SizedBox(height: size.height *0.1),
            Container(
              child: Image.asset('assets/img.jpg'),
              height:180,
              width:180
            ),
            SizedBox(height: size.height * 0.03),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                ),
                controller: name,
              ),
            ),
            SizedBox(height: size.height * 0.03),

            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    // hintText: 'Enter secure password'
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        nameHolder : name.text,
                      )
                    )
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),

            FlatButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) => RegisterScreen()
                  )
                );
              },
              child: const Text(
                'Register Here',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),

          ],
        ),
      )
    );
  }
}