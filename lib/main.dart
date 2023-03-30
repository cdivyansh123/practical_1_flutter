// imports the material design widgets from the Flutter framework.
import 'package:flutter/material.dart';

// This is the main function of the app. It calls the MyApp widget and runs the app.
void main() {
  runApp(const MyApp());
}

// This is MyApp class which extends StatelessWidget.
// It sets the home page to LoginScreen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // disables the debug banner
      debugShowCheckedModeBanner: false,

      // This creates a new ThemeData object that we will use for styling of our app.
      theme: ThemeData(
        textTheme: TextTheme(
            // define the different styles for text elements
            headline1: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
            subtitle1: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        primarySwatch: Colors.blue,
      ),

      // home property is set to LoginScreen, which is the screen that will be displayed when the application starts.
      home: LoginScreen(),
    );
  }
}

// defines a class LoginScreen that extends StatefulWidget
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _MyLoginScreenState();
}

// defines a private class _MyLoginScreenState that extends the State class
class _MyLoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // This code creates a screen with a appBar at the top and a scrollview in the middle
    // which includes a title and a label for the login section.
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Promact',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Log in',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),

                  // This code creates a Form that contains two TextField for the user's username and password.
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                label: Text('UserName'),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                label: Text('Password'),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          // This code creates an ElevatedButton that is used to submit the login information.
                          SizedBox(
                            width: double.infinity,
                            height: 42,
                            child: ElevatedButton(
                              child: Text('Login'),
                              onPressed: () {
                                print('Login button pressed');
                              },
                            ),
                          ),

                          // This code creates a Row contains a Text and a TextButton for users who don't have an account.
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Does not have account?',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              TextButton(
                                onPressed: () {
                                  print('Sign in button pressed');
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
