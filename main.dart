// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const MyApp());
// }

// class Auth {
//   final FirebaseAuth auth = FirebaseAuth.instance;

//   User? get currentUser => auth.currentUser;
//   Stream<User?> get authStateChanges => auth.authStateChanges();

//   Future<void> signInWithEmailAndPassword(
//       {required String email, required String password}) async {
//     await auth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> createUserWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await auth.createUserWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> signOut() async {
//     await auth.signOut();
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Home Page',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginPage(),
//         '/signUp': (context) => SignUpPage(),
//         '/profile': (context) => ProfilePage(),
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

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Profile'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 70,
//             ),
//             _buildInfoCard(
//               icon: Icons.email,
//               label: 'Email address',
//               value: Auth().currentUser?.email ?? '',
//             ),
//             _buildInfoCard(
//               icon: Icons.person,
//               label: 'Full name',
//               value: Auth().currentUser?.email ?? '',
//               // Update this to fetch actual user data
//             ),
//             _buildInfoCard(
//               icon: Icons.location_city,
//               label: 'Address',
//               value: Auth().currentUser?.email ??
//                   '', // Update this to fetch actual user data
//             ),
//             _buildInfoCard(
//               icon: Icons.phone,
//               label: 'Mobile number',
//               value: Auth().currentUser?.email ?? '',
//               // Update this to fetch actual user data
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoCard({
//     required IconData icon,
//     required String label,
//     required String value,
//   }) {
//     return Card(
//       elevation: 4,
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         leading: Icon(icon, color: Colors.blue),
//         title: Text(label),
//         subtitle: Text(
//           value,
//           style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Login Page'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/signUp');
//               },
//               child: Text('Go to Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
