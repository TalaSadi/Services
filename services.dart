// import 'package:flutter/material.dart';
// import 'employees.dart';

// main() => runApp(myApp());

// class myApp extends StatefulWidget {
//   const myApp({super.key});

//   @override
//   State<myApp> createState() => _myAppState();
// }

// class _myAppState extends State<myApp> {
//   @override
//   String statusMode = '';

//   bool switchValue = false;
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         initialRoute: '/',
//         routes: {
//           '/employees_lessons': (context) => Employees_lessons(),
//           // '/serviceDetails':(context) => ,
//         },
//         home: Scaffold(
//           backgroundColor: getBackGroundColor(),
//           appBar: AppBar(
//             backgroundColor: getBackGroundColor(),
//             title: Text(
//               '',
//               style: changeColor(),
//             ),
//             actions: [
//               Switch(value: switchValue, onChanged: changeSwitch),
//             ],
//           ),
//           body: GridView.count(
//             padding: EdgeInsets.all(5),
//             crossAxisCount: 2,
//             children: [
//               buildMyContainer(
//                   'https://images.unsplash.com/photo-1585421514284-efb74c2b69ba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//                   'Home Cleaning'),
//               buildMyContainer(
//                   'https://media.istockphoto.com/id/1777892880/photo/indian-and-caucasian-partnership-mover-workers-in-red-uniform-uploading-furniture-and-boxes.jpg?s=1024x1024&w=is&k=20&c=97JchNOOSH5E8CqqZQ_0L-hb2PJbOrKSd2EkPL34PVM=',
//                   'moving help'),
//               buildMyContainer(
//                   'https://media.istockphoto.com/id/1139582506/photo/the-hands-of-an-electrician-installing-a-power-switch.jpg?s=2048x2048&w=is&k=20&c=7PStVhxeS2F83X1NV2ROY9Q4SeGSSweaf1M4_p1qodM=',
//                   'Electrical Help'),
//               buildMyContainer(
//                 'https://media.istockphoto.com/id/1132951103/photo/private-teacher-helping-girl-doing-homework.jpg?s=2048x2048&w=is&k=20&c=Yt7hQnR5G_-MYve96RquTungjFEeb4ZbmjZUKPoOkP0=',
//                 'Private Lessons',
//               ),
//               buildMyContainer(
//                   'https://media.istockphoto.com/id/494257144/photo/lpg-gas-bottles-lpg-plant.jpg?s=2048x2048&w=is&k=20&c=UGXhAazWYckEGyab87YPMgPBg5l8JgqJKXuKa1nY3Rw=',
//                   'Gas Providing'),
//               buildMyContainer(
//                   'https://media.istockphoto.com/id/1465654643/photo/close-up-of-a-architect-discussing-building-blueprints-with-female-colleague-in-office.jpg?s=2048x2048&w=is&k=20&c=c88XKfM3fIvzybb0YK2oe0Lf_0exMBrOH4Er_YfGZZM=',
//                   'Interior Designer'),
//             ],
//           ),
//         ));
//   }

//   void changeSwitch(bool value) {
//     setState(() {
//       switchValue = value;
//     });
//   }

//   Color getBackGroundColor() {
//     if (switchValue == false) return Colors.white;
//     return Colors.black;
//   }

//   TextStyle? changeColor() {
//     // if (switchValue == true)
//     //   return TextStyle(color: Colors.white);
//     // else {
//     //   return TextStyle(color: Colors.black);
//   }
// }

// Widget buildMyContainer(String imageUrl, String serviceName) {
//   return InkWell(
//     borderRadius: BorderRadius.circular(16.0),
//     child: Card(
//       elevation: 4.0,
//       shape: RoundedRectangleBorder(),
//       child: Column(
//         children: [
//           Expanded(
//             flex: 10,
//             child: Image.network(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 serviceName,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget buildFilter() {
//   return Expanded(
//       child: Container(
//     height: 30,
//     width: 550,
//     // color: Colors.grey,
//     decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 211, 207, 207),
//         borderRadius: BorderRadius.circular(20)),
//     child: Row(
//       children: [TextButton(onPressed: () {}, child: Text('cleaning'))],
//     ),
//   )
//       // borderRadius: BorderRadius.circular(16.0),
//       );
// }

// import 'package:flutter/material.dart';
// import 'employees.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool switchValue = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => MyHomePage(),
//         '/employees_lessons': (context) => Employees_lessons(),
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool switchValue = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: getBackgroundColor(),
//       appBar: AppBar(
//         backgroundColor: getBackgroundColor(),
//         title: Text(
//           'Your App Title',
//           style: changeAppBarTextStyle(),
//         ),
//         actions: [
//           Switch(value: switchValue, onChanged: changeSwitch),
//         ],
//       ),
//       body: GridView.count(
//         padding: EdgeInsets.all(5),
//         crossAxisCount: 2,
//         children: [
//           buildMyContainer(
//             'https://media.istockphoto.com/id/1132951103/photo/private-teacher-helping-girl-doing-homework.jpg?s=2048x2048&w=is&k=20&c=Yt7hQnR5G_-MYve96RquTungjFEeb4ZbmjZUKPoOkP0=',
//             'Private Lessons',
//             () {
//               Navigator.pushNamed(context, '/employees_lessons');
//             },
//           ),

//  buildMyContainer(
//            'https://images.unsplash.com/photo-1585421514284-efb74c2b69ba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//             'Home Cleaning',() {
//               Navigator.pushNamed(context, '/');
//             },),

//           // Add more containers as needed
//         ],
//       ),
//     );
//   }

//   void changeSwitch(bool value) {
//     setState(() {
//       switchValue = value;
//     });
//   }

//   Color getBackgroundColor() {
//     return switchValue ? Colors.black : Colors.white;
//   }

//   TextStyle changeAppBarTextStyle() {
//     return switchValue
//         ? TextStyle(color: Colors.white)
//         : TextStyle(color: Colors.black);
//   }
// }

// class EmployeesLessons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employees Lessons'),
//       ),
//       body: Center(
//         child: Text('Employees Lessons Page'),
//       ),
//     );
//   }
// }

// Widget buildMyContainer(
//     String imageUrl, String serviceName, VoidCallback onTap) {
//   return InkWell(
//     onTap: onTap,
//     borderRadius: BorderRadius.circular(16.0),
//     child: Card(
//       elevation: 4.0,
//       shape: RoundedRectangleBorder(),
//       child: Column(
//         children: [
//           Expanded(
//             flex: 10,
//             child: Image.network(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 serviceName,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'lessons.dart';
import 'cleaning.dart';
import 'Interior.dart';
import 'gas.dart';
import 'electric.dart';
import 'moving.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/employees_lessons': (context) => Employees_lessons(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getBackgroundColor(),
      appBar: AppBar(
        backgroundColor: getBackgroundColor(),
        title: Text(
          'Your App Title',
          style: changeAppBarTextStyle(),
        ),
        actions: [
          Switch(value: switchValue, onChanged: changeSwitch),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        crossAxisCount: 2,
        children: [
          buildMyContainer(
            'https://media.istockphoto.com/id/1132951103/photo/private-teacher-helping-girl-doing-homework.jpg?s=2048x2048&w=is&k=20&c=Yt7hQnR5G_-MYve96RquTungjFEeb4ZbmjZUKPoOkP0=',
            'Private Lessons',
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Employees_lessons()));
            },
          ),
          buildMyContainer(
            'https://images.unsplash.com/photo-1585421514284-efb74c2b69ba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            'Home Cleaning',
            () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cleaning()));
            },
          ),

          buildMyContainer(
              'https://media.istockphoto.com/id/1465654643/photo/close-up-of-a-architect-discussing-building-blueprints-with-female-colleague-in-office.jpg?s=2048x2048&w=is&k=20&c=c88XKfM3fIvzybb0YK2oe0Lf_0exMBrOH4Er_YfGZZM=',
              'Interior Designer', () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => interior()));
          }),

          buildMyContainer(
              'https://media.istockphoto.com/id/494257144/photo/lpg-gas-bottles-lpg-plant.jpg?s=2048x2048&w=is&k=20&c=UGXhAazWYckEGyab87YPMgPBg5l8JgqJKXuKa1nY3Rw=',
              'Gas Providing', () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => gas()));
          }),

          buildMyContainer(
              'https://media.istockphoto.com/id/1139582506/photo/the-hands-of-an-electrician-installing-a-power-switch.jpg?s=2048x2048&w=is&k=20&c=7PStVhxeS2F83X1NV2ROY9Q4SeGSSweaf1M4_p1qodM=',
              'Electrical Help', () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => electric()));
          }),

          buildMyContainer(
              'https://media.istockphoto.com/id/1777892880/photo/indian-and-caucasian-partnership-mover-workers-in-red-uniform-uploading-furniture-and-boxes.jpg?s=1024x1024&w=is&k=20&c=97JchNOOSH5E8CqqZQ_0L-hb2PJbOrKSd2EkPL34PVM=',
              'moving help', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => moving_furniture()));
          }),

          // Add more containers as needed
        ],
      ),
    );
  }

  void changeSwitch(bool value) {
    setState(() {
      switchValue = value;
    });
  }

  Color getBackgroundColor() {
    return switchValue ? Colors.black : Colors.white;
  }

  TextStyle changeAppBarTextStyle() {
    return switchValue
        ? TextStyle(color: Colors.white)
        : TextStyle(color: Colors.black);
  }
}

Widget buildMyContainer(
    String imageUrl, String serviceName, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(16.0),
    child: Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(),
      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                serviceName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
