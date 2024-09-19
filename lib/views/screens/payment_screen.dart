import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:course_app/main.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    var transcriptID='TA11231PW';
    Widget screenContent;
    if(screenWidth < 600) {
      screenContent = Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle_rounded, color: const Color.fromARGB(
                        129, 10, 227, 202), size: screenHeight * 0.15),
                    // Success Icon
                    SizedBox(height: screenHeight*0.014),
                    // Payment Status
                    Text(
                      "Payment Success",
                      style: TextStyle(
                        fontSize: screenHeight * 0.032,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Amount Paid
                    Text(
                      "\$35.00",
                      style: TextStyle(
                        fontSize: screenHeight * 0.0375,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.024),
                    // Course and Details
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 16,
                                backgroundImage:
                                NetworkImage(
                                    'https://plus.unsplash.com/premium_photo-1658527049634-15142565537a?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Christiana Amandla',
                                style: TextStyle(
                                  fontSize: screenHeight * 0.021,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Adobe Xd Editing Course',
                            style: TextStyle(
                              fontSize: screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.067),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ID Transcription',
                                    style: TextStyle(color: Colors.grey,
                                        fontSize: !(screenWidth <= 360 &&
                                            screenHeight >= 800)
                                            ? screenHeight * 0.0203
                                            : 13),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    transcriptID,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: !(screenWidth <= 360 &&
                                            screenHeight >= 800)
                                            ? screenHeight * 0.025
                                            : 16),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Invoice Date',
                                    style: TextStyle(color: Colors.grey,
                                        fontSize: !(screenWidth <= 360 &&
                                            screenHeight >= 800)
                                            ? screenHeight * 0.0203
                                            : 13),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Nov 14, 2023',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: !(screenWidth <= 360 &&
                                            screenHeight >= 800)
                                            ? screenHeight * 0.025
                                            : 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.0375),
                    // Barcode
                    BarcodeWidget(
                      drawText: false,
                      barcode: Barcode.code128(escapes: true),
                      data: transcriptID,
                      width: 400,
                      height: screenHeight * 0.08,
                    ),
                    SizedBox(height: screenHeight * 0.02), // Done Button
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.037),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color.fromARGB(
                        255, 138, 195, 73),
                    // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: screenHeight*0.0211),
                  ),
                ),
              ),
            ],
          ),
        ),
      );   //For Mobile
    }else{
      screenContent = Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle_rounded, color: Colors.green, size: screenHeight * 0.15),
                    // Success Icon
                    const SizedBox(height: 16),
                    // Payment Status
                    Text(
                      "Payment Success",
                      style: TextStyle(
                        fontSize: screenHeight * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Amount Paid
                    Text(
                      "\$35.00",
                      style: TextStyle(
                        fontSize: screenHeight * 0.041,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.024),
                    // Course and Details
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 16,
                                backgroundImage:
                                AssetImage(
                                    'assets/avatar.jpg'), // Replace with actual image
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Christiana Amandla',
                                style: TextStyle(
                                  fontSize: screenHeight * 0.022,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Adobe Xd Editing Course',
                            style: TextStyle(
                              fontSize: screenHeight * 0.029,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.067),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ID Transcription',
                                    style: TextStyle(color: Colors.grey,
                                        fontSize: screenHeight * 0.021),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    transcriptID,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenHeight * 0.026
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Invoice Date',
                                    style: TextStyle(color: Colors.grey,
                                        fontSize: screenHeight * 0.021),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Nov 14, 2023',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenHeight * 0.026),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.0375),
                    // Barcode
                    BarcodeWidget(
                      drawText: false,
                      barcode: Barcode.code128(escapes: true),
                      data: transcriptID,
                      width: screenWidth*0.9,
                      height: screenHeight * 0.085,
                    ),
                    SizedBox(height: screenHeight * 0.03), // Done Button
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.045),
              SizedBox(
                width: double.infinity,
                height: screenHeight*0.080,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color.fromARGB(
                        255, 138, 195, 73),
                    // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: screenHeight*0.025),
                  ),
                ),
              ),
            ],
          ),
        ),
      );   //For Tabs
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: screenContent
    );
  }
}
