import 'package:flutter/material.dart';

// ignore: camel_case_types
class costomjobsnumber extends StatelessWidget {
  // Icon data to be displayed
  final Color iconColor;
  const costomjobsnumber({
    super.key,
    required this.iconColor, // Required parameter for icon data
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed('/detals');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.blueGrey[300],
          elevation: 20,
          shadowColor: Colors.green[100],
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon Column
                CircleAvatar(
                  radius: 50,
                  backgroundColor:
                      Colors.green[50], // Add background color for the circle
                  child: Icon(
                    Icons.business_center,
                    size: 40,
                    color: Colors.green[900],
                  ), // Use the desired icon
                ),
                const SizedBox(width: 20), // Add space between icon and text
                // Text Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Network Engineer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                        fontFamily: 'Times', // Set text color to black
                      ),
                    ),
                    const SizedBox(
                        height: 8), // Add vertical space between texts
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.green[900],
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Position: America',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green[900],
                            fontFamily: 'courier',
                            fontWeight:
                                FontWeight.bold, // Set text color to black
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.green[900],
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Time: Full time',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green[900],
                            fontFamily: 'courier',
                            fontWeight:
                                FontWeight.bold, // Set text color to black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
