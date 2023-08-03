import 'package:flutter/material.dart';

void main(){
  runApp(LogIn());
}

class LogIn extends StatelessWidget{
 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(


              children: [
                Image.asset("assets/images/img.png",fit: BoxFit.cover,),
                Container(
                  child: Text(
                      "Welcome",
                       style: TextStyle(fontSize: 20,color: Colors.blue),
                  ),
                ),
                SizedBox(
                   height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                         decoration: InputDecoration(
                           hintText: "Enter first Name",
                           labelText: "First Name",
                         ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Last Name",
                          labelText: "Last Name"
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "UserName",
                            labelText: "UserName",

                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, process login
                            // For now, just print a success message
                            print('Log In successfully');

                            // Step 1: Clear the text fields after successful login
                            _formKey.currentState!.reset();

                            // Step 2: Navigate to HomePage after successful login
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        },
                        child: Text("Log In"),
                      )
                    ],
                  ),
                ),

              ],

      ),
    );
  }


}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("'Welcome to HomePage"),
      ),
      body: Center(
        child: Text("You are logged in!"),
      ),

    );
  }
}
