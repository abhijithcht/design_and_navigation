import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: screenWidth * 0.18,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.06),
          child: Container(
            height: screenHeight * 0.047,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(screenWidth * 0.04),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'AliClinic',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.037,
                      ),
                    ),
                    const Text(
                      'Veterinary Clinic',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
                Image.asset('asset/image/logo.png',
                    height: screenHeight * 0.047),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('asset/image/cougar.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(screenWidth * 0.2),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth * 0.2),
                  bottomLeft: Radius.circular(screenWidth * 0.2),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.11,
                  vertical: screenHeight * 0.019,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: screenWidth * 0.037,
                        ),
                      ),
                      Text(
                        'Cougar Alex Treatment',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.074,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: screenWidth * 0.037,
                        ),
                      ),
                      Text(
                        'Zookeepers originally planned to euthanize it. Need to have spinal surgery, thanks to which it will be able to live fully among relatives in the reserve.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.037,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Raised so far',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: screenWidth * 0.037,
                            ),
                          ),
                          Text(
                            'Target',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: screenWidth * 0.037,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$14.599',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          Text(
                            '\$20.000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      LinearProgressIndicator(
                        color: Colors.black,
                        value: 0.72,
                        minHeight: screenHeight * 0.007,
                      ),
                      SizedBox(height: screenHeight * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          donationContainer(
                            '\$10',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                          donationContainer('\$20',
                              backgroundColor: Colors.black,
                              textColor: Colors.white),
                          donationContainer(
                            '\$30',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                          donationContainer(
                            '\$40',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Container(
                        width: double.infinity,
                        height: screenHeight * 0.037,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.04),
                        ),
                        child: Center(
                          child: Text(
                            'Custom Amount',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenWidth,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenWidth,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(screenWidth * 0.2),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.11,
                    vertical: screenHeight * 0.04,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    ),
                    child: Center(
                      child: Text(
                        'Send Donation',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget donationContainer(String amount,
      {required Color backgroundColor, required Color textColor}) {
    return Container(
      height: screenHeight * 0.05,
      width: screenHeight * 0.05,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(screenWidth * 0.08),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          amount,
          style: TextStyle(
            fontSize: screenWidth * 0.04,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
