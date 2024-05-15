import 'package:flutter/material.dart';

main() => runApp(myApp());

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  String statusMode = '';

  bool switchValue = false;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: getBackGroundColor(),
      appBar: AppBar(
        backgroundColor: getBackGroundColor(),
        title: Text(
          '',
          style: changeColor(),
        ),
        actions: [
          buildFilter(),
          Switch(value: switchValue, onChanged: changeSwitch),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        crossAxisCount: 2,
        children: [
          buildMyContainer(
              'https://media.istockphoto.com/id/1517072679/photo/young-housekeeper-washing-window-glass-with-rag-and-spray-detergent-positive-asian-woman.jpg?s=2048x2048&w=is&k=20&c=yMaBDyvgdDYxapWk5zTOeZGUynSDcgPrp0JqTrymYms=',
              'Home Cleaning'),
          buildMyContainer(
              'https://media.istockphoto.com/id/1777892880/photo/indian-and-caucasian-partnership-mover-workers-in-red-uniform-uploading-furniture-and-boxes.jpg?s=1024x1024&w=is&k=20&c=97JchNOOSH5E8CqqZQ_0L-hb2PJbOrKSd2EkPL34PVM=',
              'moving help'),
          buildMyContainer(
              'https://media.istockphoto.com/id/1139582506/photo/the-hands-of-an-electrician-installing-a-power-switch.jpg?s=2048x2048&w=is&k=20&c=7PStVhxeS2F83X1NV2ROY9Q4SeGSSweaf1M4_p1qodM=',
              'Electrical Help'),
          buildMyContainer(
              'https://plus.unsplash.com/premium_photo-1661313691854-343d607bbace?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'wall painting'),
          buildMyContainer(
              'https://media.istockphoto.com/id/1132951103/photo/private-teacher-helping-girl-doing-homework.jpg?s=2048x2048&w=is&k=20&c=Yt7hQnR5G_-MYve96RquTungjFEeb4ZbmjZUKPoOkP0=',
              'Private Lessons'),
          buildMyContainer(
              'https://plus.unsplash.com/premium_photo-1661313691854-343d607bbace?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'wall painting'),
          buildMyContainer(
              'https://plus.unsplash.com/premium_photo-1661313691854-343d607bbace?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'wall painting'),
          buildMyContainer(
              'https://plus.unsplash.com/premium_photo-1661313691854-343d607bbace?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'wall painting'),
          buildMyContainer(
              'https://plus.unsplash.com/premium_photo-1661313691854-343d607bbace?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              'wall painting'),
        ],
      ),
    ));
  }

  void changeSwitch(bool value) {
    setState(() {
      switchValue = value;
    });
  }

  Color getBackGroundColor() {
    if (switchValue == false) return Colors.white;
    return Colors.black;
  }

  TextStyle? changeColor() {
    // if (switchValue == true)
    //   return TextStyle(color: Colors.white);
    // else {
    //   return TextStyle(color: Colors.black);
  }
}

Widget buildMyContainer(String imageUrl, String serviceName) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
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
                padding: EdgeInsets.all(1.0),
                child: Text(
                  serviceName,
                  textAlign: TextAlign.center,
                )))
      ],
    ),
  );
}

Widget buildFilter() {
  return Expanded(
      child: Container(
    height: 30,
    width: 550,
    // color: Colors.grey,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 211, 207, 207),
        borderRadius: BorderRadius.circular(20)),
    child: Row(
      children: [TextButton(onPressed: () {}, child: Text('cleaning'))],
    ),
  )
      // borderRadius: BorderRadius.circular(16.0),
      );
}
