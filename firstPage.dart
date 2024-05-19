// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'firebase_options.dart'; // Ensure you have the correct import for FirebaseOptions
// // import 'pageOne.dart';

// // class AuthProvider extends ChangeNotifier {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;

// //   late User? _loggedInUser;

// //   User? get loggedInUser => _loggedInUser;

// //   bool get isLoggedIn => _auth.currentUser != null;

// //   Future<void> signUp({
// //     required String email,
// //     required String password,
// //     required String name,
// //     required String mobileNumber,
// //   }) async {
// //     try {
// //       await _auth.createUserWithEmailAndPassword(
// //         email: email,
// //         password: password,
// //       );

// //       // Create UserDetails object
// //       UserDetails userDetails = UserDetails(
// //         email: email,
// //         password: password,
// //         name: name,
// //         mobileNumber: mobileNumber,
// //       );

// //       // Update loggedInUser
// //       _loggedInUser = _auth.currentUser;

// //       // Notify listeners
// //       notifyListeners();

// //       // You can store additional user data in Firebase Firestore or Realtime Database here
// //     } catch (e) {
// //       throw e;
// //     }
// //   }

// //   Future<void> signIn({
// //     required String email,
// //     required String password,
// //   }) async {
// //     try {
// //       await _auth.signInWithEmailAndPassword(
// //         email: email,
// //         password: password,
// //       );

// //       // Update loggedInUser
// //       _loggedInUser = _auth.currentUser;

// //       // Notify listeners
// //       notifyListeners();
// //     } catch (e) {
// //       throw e;
// //     }
// //   }

// //   Future<void> signOut() async {
// //     try {
// //       await _auth.signOut();

// //       // Reset loggedInUser
// //       _loggedInUser = null;

// //       // Notify listeners
// //       notifyListeners();
// //     } catch (e) {
// //       throw e;
// //     }
// //   }
// // }

// // class LoginPage extends StatefulWidget {
// //   @override
// //   _LoginPageState createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<LoginPage> {
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   bool _isLoading = false;

// //   void _handleLogin() {
// //     final email = _emailController.text.trim();
// //     final password = _passwordController.text.trim();
// //     final authProvider = Provider.of<AuthProvider>(context, listen: false);

// //     if (email.isNotEmpty && password.isNotEmpty) {
// //       setState(() {
// //         _isLoading = true;
// //       });

// //       authProvider
// //           .signIn(
// //         email: email,
// //         password: password,
// //       )
// //           .then((_) {
// //         setState(() {
// //           _isLoading = false;
// //         });

// //         Navigator.pushNamed(context, '/profile');
// //       }).catchError((error) {
// //         setState(() {
// //           _isLoading = false;
// //         });

// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             content: Text('Failed to log in: $error'),
// //           ),
// //         );
// //       });
// //     } else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text('Please fill in all fields.'),
// //         ),
// //       );
// //     }
// //   }

// //   void _handleSignUpNavigation() {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => SignUpPage()),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Login'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(labelText: 'Email'),
// //             ),
// //             TextField(
// //               controller: _passwordController,
// //               decoration: InputDecoration(labelText: 'Password'),
// //               obscureText: true,
// //             ),
// //             SizedBox(height: 20),
// //             _isLoading
// //                 ? CircularProgressIndicator()
// //                 : ElevatedButton(
// //                     onPressed: _handleLogin,
// //                     child: Text('Login'),
// //                   ),
// //             SizedBox(height: 20),
// //             TextButton(
// //               onPressed: _handleSignUpNavigation,
// //               child: Text('Don\'t have an account? Sign up'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class SignUpPage extends StatefulWidget {
// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUpPage> {
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _mobileController = TextEditingController();
// //   bool _isLoading = false;

// //   void _handleSignUp() {
// //     final email = _emailController.text.trim();
// //     final password = _passwordController.text.trim();
// //     final name = _nameController.text.trim();
// //     final mobileNumber = _mobileController.text.trim();
// //     final authProvider = Provider.of<AuthProvider>(context, listen: false);

// //     if (email.isNotEmpty &&
// //         password.isNotEmpty &&
// //         name.isNotEmpty &&
// //         mobileNumber.isNotEmpty) {
// //       setState(() {
// //         _isLoading = true;
// //       });

// //       authProvider
// //           .signUp(
// //         email: email,
// //         password: password,
// //         name: name,
// //         mobileNumber: mobileNumber,
// //       )
// //           .then((_) {
// //         setState(() {
// //           _isLoading = false;
// //         });

// //         Navigator.pushNamed(context, '/profile');
// //       }).catchError((error) {
// //         setState(() {
// //           _isLoading = false;
// //         });

// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             content: Text('Failed to sign up: $error'),
// //           ),
// //         );
// //       });
// //     } else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text('Please fill in all fields.'),
// //         ),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Sign Up'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             TextField(
// //               controller: _emailController,
// //               decoration: InputDecoration(labelText: 'Email'),
// //             ),
// //             TextField(
// //               controller: _passwordController,
// //               decoration: InputDecoration(labelText: 'Password'),
// //               obscureText: true,
// //             ),
// //             TextField(
// //               controller: _nameController,
// //               decoration: InputDecoration(labelText: 'Name'),
// //             ),
// //             TextField(
// //               controller: _mobileController,
// //               decoration: InputDecoration(labelText: 'Mobile Number'),
// //             ),
// //             SizedBox(height: 20),
// //             _isLoading
// //                 ? CircularProgressIndicator()
// //                 : ElevatedButton(
// //                     onPressed: _handleSignUp,
// //                     child: Text('Sign Up'),
// //                   ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // Future<void> main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
// //   runApp(
// //     ChangeNotifierProvider(
// //       create: (context) => AuthProvider(),
// //       child: MyApp(),
// //     ),
// //   );
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: LoginPage(),
// //     );
// //   }
// // }
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/firebase_options.dart';
// import 'new.dart';

// class Auth {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   User? get currentUser => auth.currentUser;
//   Stream<User?> get authStateChanges => auth.authStateChanges();
//   Future<void> singInWithEmailAndPassword(
//       {required String email, required String password}) async {
//     await auth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> createUserWithEmailAndPassword(
//       {required String email, required String password}) async {
//     await auth.createUserWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> singOut() async {
//     await auth.signOut();
//   }
// }

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _key = GlobalKey<FormState>();
//   String errorMsg = "Wrong Username or Password";
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 254, 231, 241),
//       body: Form(
//         key: _key,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(
//                   width: double.infinity,
//                   height: 175,
//                   child: Image(
//                       image: AssetImage('assets/images/logo/puzzle.png'))),
//               const SizedBox(
//                 height: 32,
//               ),
//               const Text(
//                 "Palabra",
//                 style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: "Email",
//                   labelText: "Email",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                 ),
//                 controller: _emailController,
//                 validator: _validateEmail,
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: "Password",
//                   labelText: "Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                 ),
//                 obscureText: true,
//                 validator: _validatePassword,
//                 controller: _passwordController,
//               ),
//               const SizedBox(height: 32),
//               ElevatedButton(
//                 style: const ButtonStyle(
//                     minimumSize: MaterialStatePropertyAll(Size(150, 65)),
//                     elevation: MaterialStatePropertyAll(0),
//                     backgroundColor:
//                         MaterialStatePropertyAll(Color(0xFFD80A61))),
//                 onPressed: _login,
//                 child: const Text(
//                   "Login",
//                   style: TextStyle(fontSize: 24, color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Do not have an account?"),
//                   const SizedBox(
//                     width: 8,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/signup');
//                     },
//                     child: const Text(
//                       "SignUP",
//                       style: TextStyle(color: Colors.deepPurpleAccent),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   String? _validateEmail(String? value) {
//     if (value!.isEmpty) {
//       return "Email cannot be empty";
//     } else {
//       return null;
//     }
//   }

//   String? _validatePassword(String? value) {
//     if (value!.length < 5) {
//       return "Password cannot be empty";
//     } else {
//       return null;
//     }
//   }

//   void _login() {
//     if (_key.currentState!.validate()) {
//       _handelSignIn();
//     }
//   }

//   void _handelSignIn() {
//     try {
//       Auth()
//           .singInWithEmailAndPassword(
//               email: _emailController.text, password: _passwordController.text)
//           .whenComplete(() {
//         Navigator.pushNamed(context, '/home');
//       });
//     } catch (err) {
//       print(err);
//     }
//   }
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp((MyHomePage()));
// }

// class LearningApp extends StatelessWidget {
//   const LearningApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const Login(),
//         '/signup': (context) => const SignUp(),
//         '/home': (context) => MyHomePage(),
//       },
//     );
//   }
// }

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final formKey = GlobalKey<FormState>();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController fullNameController = TextEditingController();
//   final TextEditingController mobileController = TextEditingController();
//   final TextEditingController addressController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Form(
//           key: formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(height: 30.0),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter email',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   controller: emailController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter an email';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter password',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   controller: passwordController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a password';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 30),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter full name',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   controller: fullNameController,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter mobile',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   controller: mobileController,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter address',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   controller: addressController,
//                 ),
//                 ElevatedButton(
//                   onPressed: submitPressed,
//                   child: Text('Sign Up'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void submitPressed() {
//     if (formKey.currentState?.validate() ?? false) {
//       handleSignUp();
//     }
//   }

//   void handleSignUp() async {
//     try {
//       await Auth().createUserWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );
//       print('User created successfully');
//       Navigator.pushNamed(context, '/profile');
//     } on FirebaseAuthException catch (e) {
//       print('Error creating user: ${e.message}');
//       String errorMessage;

//       switch (e.code) {
//         case 'email-already-in-use':
//           errorMessage =
//               'The email address is already in use by another account.';
//           break;
//         case 'invalid-email':
//           errorMessage = 'The email address is not valid.';
//           break;
//         case 'operation-not-allowed':
//           errorMessage = 'Email/password accounts are not enabled.';
//           break;
//         case 'weak-password':
//           errorMessage = 'The password is too weak.';
//           break;
//         default:
//           errorMessage = 'An unknown error occurred.';
//       }

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to create user: $errorMessage'),
//         ),
//       );
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to create user: An unknown error occurred.'),
//         ),
//       );
//     }
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'services.dart';

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;

  User? get currentUser => auth.currentUser;

  Stream<User?> get authStateChanges => auth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_key.currentState!.validate()) {
      _handleSignIn();
    }
  }

  void _handleSignIn() {
    try {
      Auth()
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .whenComplete(() {
        Navigator.pushNamed(context, '/home');
      });
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to log in: $err'),
        ),
      );
    }
  }

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Email cannot be empty";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password cannot be empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(139, 142, 144, 1),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 175,
              ),
              const SizedBox(height: 32),
              const Text(
                "Log in",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                controller: _emailController,
                validator: _validateEmail,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                obscureText: true,
                validator: _validatePassword,
                controller: _passwordController,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 65)),
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFD80A61))),
                onPressed: _login,
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do not have an account?"),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  void _handleSignUp() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await Auth().createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Navigator.pushNamed(context, '/home');
      } on FirebaseAuthException catch (e) {
        String errorMessage;
        switch (e.code) {
          case 'email-already-in-use':
            errorMessage =
                'The email address is already in use by another account.';
            break;
          case 'invalid-email':
            errorMessage = 'The email address is not valid.';
            break;
          case 'operation-not-allowed':
            errorMessage = 'Email/password accounts are not enabled.';
            break;
          case 'weak-password':
            errorMessage = 'The password is too weak.';
            break;
          default:
            errorMessage = 'An unknown error occurred.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create user: $errorMessage')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:
                  Text('Failed to create user: An unknown error occurred.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter full name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  controller: _fullNameController,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter mobile',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  controller: _mobileController,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  controller: _addressController,
                ),
                ElevatedButton(
                  onPressed: _handleSignUp,
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/home': (context) => ProfilePage(),
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70,
            ),
            _buildInfoCard(
              icon: Icons.email,
              label: 'Email address',
              value: Auth().currentUser?.email ?? '',
            ),
            _buildInfoCard(
              icon: Icons.person,
              label: 'Full name',
              value: Auth().currentUser?.email ?? '',
              // Update this to fetch actual user data
            ),
            _buildInfoCard(
              icon: Icons.location_city,
              label: 'Address',
              value: Auth().currentUser?.email ??
                  '', // Update this to fetch actual user data
            ),
            _buildInfoCard(
              icon: Icons.phone,
              label: 'Mobile number',
              value: Auth().currentUser?.email ?? '',
              // Update this to fetch actual user data
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text("goToHome"))
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(label),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
