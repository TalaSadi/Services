import 'package:flutter/material.dart';

void main() => runApp(Employees_lessons());

class PurchaseOption {
  final String name;
  final IconData icon;
  PurchaseOption({required this.name, required this.icon});
}

class Employees_lessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                          "We offer professional private mathematics tutoring services tailored to meet the individual needs of students from elementary school through college. Our experienced and qualified math tutors are dedicated to helping students improve their understanding of mathematical concepts, boost their confidence, and achieve academic success. With personalized lesson plans and one-on-one attention, ensures that each student receives the support they need to excel in mathematics.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$50 per hour",
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
                          "8AM - 10AM",
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
                          "10AM - 12PM",
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
                          "12PM - 4PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
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

  void _showBottomSheetCard2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(16.0),
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
                          "We offers professional private chemistry tutoring services designed to meet the individual needs of students from high school to college. Our expert chemistry tutors are dedicated to helping students deepen their understanding of chemical concepts, improve their problem-solving skills, and achieve their academic goals. With personalized one-on-one instruction,  ensures that each student receives tailored support, whether they are struggling with basic concepts or tackling advanced topics. Our goal is to make chemistry accessible and engaging, fostering both academic success and a genuine interest in the subject.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$60 per hour",
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
                          "10AM - 1PM",
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
                          "1PM - 4PM",
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
                          "4PM - 6PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
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

  void _showBottomSheetCard3(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(16.0),
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
                          "We offers professional private physics tutoring services tailored to the unique needs of students from high school through college. Our experienced physics tutors are committed to helping students grasp complex physical concepts, enhance their analytical skills, and achieve academic excellence. With customized one-on-one instruction,whether students need help with fundamental principles or advanced topics. Our mission is to make physics comprehensible and interesting, encouraging both academic success and a deeper appreciation for the subject.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$80 per hour",
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
                          "9AM - 11AM",
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
                          "11AM - 1PM",
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
                          "1PM - 3PM",
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
                          "3PM - 6PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
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

  void _showBottomSheetCard4(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(16.0),
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
                          "We provides professional private Arabic tutoring services designed to cater to the individual needs of learners at all levels, from beginners to advanced. Our highly skilled and experienced Arabic tutors are dedicated to helping students master the Arabic language, including reading, writing, speaking, and comprehension. With personalized one-on-one instruction, ensures that each student receives customized support and a tailored learning experience, whether they are learning Arabic for academic purposes, professional needs, or personal enrichment. Our goal is to make learning Arabic engaging and effective, fostering both proficiency and a deep appreciation for the language and culture.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$50 per hour",
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
                          "9AM - 11AM",
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
                          "11AM - 1PM",
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
                          "1PM - 3PM",
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
                          "3PM - 6PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
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

  void _showBottomSheetCard5(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(16.0),
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
                          "We offers professional private English tutoring services tailored to meet the diverse needs of students of all ages and proficiency levels. Our experienced and highly qualified English tutors are committed to helping students enhance their language skills, including reading, writing, speaking, and listening. With personalized one-on-one instruction,  provides customized support to ensure that each student achieves their academic, professional, or personal language goals. Whether you are preparing for exams, improving your business English, or simply aiming to become more fluent, is dedicated to making your learning experience engaging and effective.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$60 per hour",
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
                          "9AM - 11AM",
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
                          "11AM - 1PM",
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
                          "1PM - 3PM",
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
                          "3PM - 6PM",
                          style: TextStyle(
                            color: _selectedDate == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
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

  @override
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
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
                          "lib/teacher1.jpg",
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
                        "Fatima Ali ",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional private Mathematics Teacher",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
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
                            Text("Rate")
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
                              Text("\$50/hr"),
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
            GestureDetector(
              onTap: () {
                _showBottomSheetCard2(context);
              },
              child: Card(
                //2
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/teacher2.jpg",
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
                        "Youssef Hassan",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional private chemistry teacher",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
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
                            Text("Rate")
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
                              Text("\$60/hr"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 0),
            GestureDetector(
              onTap: () {
                _showBottomSheetCard3(context);
              },
              child: Card(
                //3
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/teacher3.jpg",
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
                        "Mariam Khalifa ",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional private physics teacher",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
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
                            Text("Rate")
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
                              const Text("\$80/hr"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _showBottomSheetCard4(context);
              },
              child: Card(
                //4
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/teacher4.jpg",
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
                        "Zahra Nasir",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional private Arabic teacher",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
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
                            Text("Rate")
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
                              const Text("\$50/hr"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _showBottomSheetCard5(context);
              },
              child: Card(
                //5
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          "lib/teacher5.jpg",
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
                        "Omar  Khalid",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional private English teacher",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
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
                            Text("Rate")
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
                              const Text("\$60/hr"),
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
