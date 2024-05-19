import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class PurchaseOption {
  final String name;
  final IconData icon;
  PurchaseOption({required this.name, required this.icon});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gas(),
    );
  }
}

class gas extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<gas> {
  @override
  //card1
  //bool isSelected = false;
  bool isSelected1 = false;
  //card2
  // bool isSelected2=false;
  bool isSelected21 = false;
  //card3
  //bool isSelected3=false;
  bool isSelected31 = false;
  //card4
  // bool isSelected4=false;
  bool isSelected41 = false;
  //card5
  // bool isSelected5=false;
  bool isSelected51 = false;
  @override
  int? _selectedDate;
  PurchaseOption? _selectedPurchaseOption;
  List<PurchaseOption> _purchaseOptions = [
    PurchaseOption(name: "Cash", icon: Icons.attach_money),
    PurchaseOption(name: "PayPal", icon: Icons.payment),
  ];

  void _handleDateSelection(int? value) {
    setState(() {
      _selectedDate = value;
    });
  }

  void _showBottomSheetCard1(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(16.0),
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "Greliable solution for hassle-free gas cylinder delivery service. We understand the importance of having a constant supply of gas for your cooking and heating needs, which is why we offer a convenient delivery service right to your doorstep.  you can say goodbye to the inconvenience of transporting heavy gas cylinders and waiting in long queues for refills. Our efficient delivery system ensures that you always have a full cylinder ready for use, providing peace of mind and convenience.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$8 per hour",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Select Hours for Booking:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () => _handleDateSelection(1),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .blue; // Background color when pressed
                            }
                            return Colors.grey
                                .withOpacity(0.3); // Default background color
                          },
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "10AM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => _handleDateSelection(1),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .blue; // Background color when pressed
                            }
                            return Colors.grey
                                .withOpacity(0.3); // Default background color
                          },
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "11AM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => _handleDateSelection(1),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .blue; // Background color when pressed
                            }
                            return Colors.grey
                                .withOpacity(0.3); // Default background color
                          },
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "12PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () => _handleDateSelection(1),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors
                                  .blue; // Background color when pressed
                            }
                            return Colors.grey
                                .withOpacity(0.3); // Default background color
                          },
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "1PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () => _handleDateSelection(1),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .blue; // Background color when pressed
                              }
                              return Colors.grey
                                  .withOpacity(0.3); // Default background color
                            },
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2PM",
                            style: TextStyle(
                              color: _selectedDate == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => _handleDateSelection(1),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .blue; // Background color when pressed
                              }
                              return Colors.grey
                                  .withOpacity(0.3); // Default background color
                            },
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "3PM",
                            style: TextStyle(
                              color: _selectedDate == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => _handleDateSelection(1),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .blue; // Background color when pressed
                              }
                              return Colors.grey
                                  .withOpacity(0.3); // Default background color
                            },
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "7PM",
                            style: TextStyle(
                              color: _selectedDate == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => _handleDateSelection(1),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .blue; // Background color when pressed
                              }
                              return Colors.grey
                                  .withOpacity(0.3); // Default background color
                            },
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "11PM",
                            style: TextStyle(
                              color: _selectedDate == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      "Select Payment Method:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: _purchaseOptions.map((option) {
                        return RadioListTile<PurchaseOption>(
                          title: Text(option.name),
                          value: option,
                          groupValue: _selectedPurchaseOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedPurchaseOption = value;
                            });
                          },
                          secondary: Icon(option.icon),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    //card1
    //Color iconColor = isSelected ? Colors.yellow.shade700 : Colors.yellow;
    //IconData iconData = isSelected ? Icons.star : Icons.star_border;
    Color iconColor1 = isSelected1 ? Colors.black : Colors.black;
    IconData iconData1 = isSelected1 ? Icons.bookmark : Icons.bookmark_border;
    //card2
    //  Color iconColor2 = isSelected2 ? Colors.yellow.shade700 : Colors.yellow;
    //IconData iconData2 = isSelected2 ? Icons.star : Icons.star_border;
    Color iconColor21 = isSelected21 ? Colors.black : Colors.black;
    IconData iconData21 = isSelected21 ? Icons.bookmark : Icons.bookmark_border;
    //card3
    //Color iconColor3 = isSelected3 ? Colors.yellow.shade700 : Colors.yellow;
    //IconData iconData3 = isSelected3 ? Icons.star : Icons.star_border;
    Color iconColor31 = isSelected31 ? Colors.black : Colors.black;
    IconData iconData31 = isSelected31 ? Icons.bookmark : Icons.bookmark_border;
    //card4
    //Color iconColor4 = isSelected4 ? Colors.yellow.shade700 : Colors.yellow;
    // IconData iconData4 = isSelected4 ? Icons.star : Icons.star_border;
    Color iconColor41 = isSelected41 ? Colors.black : Colors.black;
    IconData iconData41 = isSelected41 ? Icons.bookmark : Icons.bookmark_border;
    //card5
    // Color iconColor5 = isSelected5 ? Colors.yellow.shade700 : Colors.yellow;
    //IconData iconData5 = isSelected5 ? Icons.star : Icons.star_border;
    Color iconColor51 = isSelected51 ? Colors.black : Colors.black;
    IconData iconData51 = isSelected51 ? Icons.bookmark : Icons.bookmark_border;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            //card1
            GestureDetector(
              onTap: () {
                _showBottomSheetCard1(context);
              },
              child: Card(
                //1
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/Images/gas1.1.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected1 = !isSelected1;
                          });
                        },
                        icon: Icon(
                          iconData1,
                          color: iconColor1,
                        ),
                      ),
                      title: const Text(
                        "Youssef Said",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Delivery to Sweileh",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(100.0),
                        children: [
                          const TableRow(children: [
                            Text("Rating"),
                            Text("TotalJobs"),
                            Text("Price")
                          ]),
                          TableRow(
                            children: [
                              Row(
                                children: [
                                  /*IconButton(
                                  onPressed: () {
                                    setState(() {
                                     // isSelected = !isSelected;
                                    });
                                  },*/
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                    //iconData,
                                    //color: iconColor,
                                  ),
                                ],
                              ),
                              Text("116"),
                              Text("\$8"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 10), // Add some space between cards
            //card2
            GestureDetector(
              onTap: () {
                _showBottomSheetCard1(context);
              },
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/Images/gas3.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected21 = !isSelected21;
                          });
                        },
                        icon: Icon(
                          iconData21,
                          color: iconColor21,
                        ),
                      ),
                      title: const Text(
                        "Ibrahim Hamadi",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Delivery to Jubaiha",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(100.0),
                        children: [
                          const TableRow(children: [
                            Text("Rating"),
                            Text("TotalJobs"),
                            Text("Price")
                          ]),
                          TableRow(
                            children: [
                              Row(
                                children: [
                                  /* IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelected2 = !isSelected2;
                                    });
                                  },
                                  icon: Icon(
                                    iconData2,
                                    color: iconColor2,
                                  ),*/
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  ),
                                ],
                              ),
                              Text("120"),
                              Text("\$8"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //card3
            GestureDetector(
              onTap: () {
                _showBottomSheetCard1(context);
              },
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/Images/gas4.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected31 = !isSelected31;
                          });
                        },
                        icon: Icon(
                          iconData31,
                          color: iconColor31,
                        ),
                      ),
                      title: const Text(
                        "Jamal Fawzi",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Delivery to Khalda",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(100.0),
                        children: [
                          const TableRow(children: [
                            Text("Rating"),
                            Text("TotalJobs"),
                            Text("Price")
                          ]),
                          TableRow(
                            children: [
                              Row(
                                children: [
                                  /* IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelected3 = !isSelected3;
                                    });
                                  },
                                  icon: Icon(
                                    iconData3,
                                    color: iconColor3,
                                  ),
                                ),*/
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  )
                                ],
                              ),
                              const Text("150"),
                              const Text("\$8"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheetCard1(context);
              },
              child:
                  //const SizedBox(height: 10),
                  Card(
                //4
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/Images/gas5.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected41 = !isSelected41;
                          });
                        },
                        icon: Icon(
                          iconData41,
                          color: iconColor41,
                        ),
                      ),
                      title: const Text(
                        "Omar Saab",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Delivery to Sweifieh",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(100.0),
                        children: [
                          const TableRow(children: [
                            Text("Rating"),
                            Text("TotalJobs"),
                            Text("Price")
                          ]),
                          TableRow(
                            children: [
                              Row(
                                children: [
                                  /*  IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelected4 = !isSelected4;
                                    });
                                  },
                                  icon: Icon(
                                    iconData4,
                                    color: iconColor4,
                                  ),
                                ),*/
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  )
                                ],
                              ),
                              const Text("200"),
                              const Text("\$8"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheetCard1(context);
              },
              child:
                  //const SizedBox(height: 10),
                  Card(
                //5
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/Images/download.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            isSelected51 = !isSelected51;
                          });
                        },
                        icon: Icon(
                          iconData51,
                          color: iconColor51,
                        ),
                      ),
                      title: const Text(
                        "Hassan Nassar",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Delivery to Um-Uthaina",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(100.0),
                        children: [
                          const TableRow(children: [
                            Text("Rating"),
                            Text("TotalJobs"),
                            Text("Price")
                          ]),
                          TableRow(
                            children: [
                              Row(
                                children: [
                                  /* IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelected5 = !isSelected5;
                                    });
                                  },
                                  icon: Icon(
                                    iconData5,
                                    color: iconColor5,
                                  ),
                                ),*/
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                  )
                                ],
                              ),
                              const Text("112"),
                              const Text("\$8"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
