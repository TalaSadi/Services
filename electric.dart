import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class PurchaseOption {
  final String name;
  final IconData icon;
  PurchaseOption({required this.name, required this.icon});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: electric(),
    );
  }
}

class electric extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<electric> {
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
                          "We provides professional outdoor lighting design and installation services to enhance the beauty, safety, and functionality of your exterior spaces. Our expert team specializes in creating custom lighting solutions that highlight the architectural features of your home, illuminate pathways and gardens, and create inviting outdoor living areas. Whether you need landscape lighting, security lighting, or decorative lighting for special occasions,  is dedicated to delivering high-quality and energy-efficient lighting designs that transform your outdoor environment and elevate your property’s curb appeal.",
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
                          "We offer professional electrical outlet installation services to ensure safe and reliable power access in your home or office. Our licensed and experienced electricians are dedicated to providing high-quality service, whether you need additional outlets for convenience, specialized outlets for appliances, or upgraded outlets for safety and efficiency. With a focus on precision and adherence to all electrical codes and standards, OutletPro Installations guarantees that your new outlets are installed correctly and function flawlessly. We prioritize safety, quality, and customer satisfaction, making sure that your electrical needs are met with the utmost professionalism and care.",
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
                          "Professional in Circuit Breaker Replacement is a dedicated service designed to connect homeowners and businesses with skilled electricians who specialize in the replacement and maintenance of circuit breakers. This service ensures that your electrical systems are functioning safely and efficiently, providing peace of mind and preventing potential electrical hazards",
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
                          "Professional in Circuit Breaker Replacement is a dedicated service designed to connect homeowners and businesses with skilled electricians who specialize in the replacement and maintenance of circuit breakers. This service ensures that your electrical systems are functioning safely and efficiently, providing peace of mind and preventing potential electrical hazards.",
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
                          "Professional in Installing Smart Home Devices is a specialized service designed to connect homeowners and businesses with expert technicians for the seamless installation and integration of smart home technology. This service ensures that your smart devices are installed correctly and function optimally, enhancing your home's convenience, security, and energy efficiency.",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "Price: \$10 per hour",
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
                          "lib/Electrical1.jpg",
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
                        "Juan Martínez",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional in outdoor lighting",
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
                          "lib/Electrical2.jpg",
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
                        "Carlos García",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional in installing a new electrical outlet",
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
                          "lib/Electrical3.jpg",
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
                        "Luis Hernández",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional in Circuit Breaker Replacement",
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
                          "lib/Electrical4.jpg",
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
                        "Daniel Wilson",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional in replacing old wires",
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
                          "lib/Electrical5.jpg",
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
                        "Nicolas Lefevre",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Professional in installing smart home devices",
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
                              const Text("\$10/hr"),
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
