import 'package:flutter/material.dart';
import 'package:test_app/components/cardComponent.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 25.0, top: 60.0, right: 25.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '28-03-2024 (Thursday)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Mathematics',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xfffc5a54),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Science',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xff3a0e97),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Hindi',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xfffc5a54),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'English',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xff3a0e97),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '29-03-2024 (Friday)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Mathematics',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xfffc5a54),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Science',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xff3a0e97),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                  SizedBox(height: 20),
                  CardComponent(
                    title: 'Hindi',
                    subscript: 'Class 6',
                    // color: Colors.blue,
                    textColor: Colors.black,
                    boxColor: Color(0xfffc5a54),
                    boxText: '9:00 AM - 10:00 AM',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
