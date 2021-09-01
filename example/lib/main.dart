import 'package:flutter/material.dart';
import 'package:adaptive_ui/adaptive_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adaptive UI example',
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the adaptive UI helper class
    AdaptiveUI().init(
      context: context,
      height: 812, // Design Height (Default design height)
      width: 375, // Design Width (Default design width)
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adaptive UI',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Some random text',
                  style: TextStyle(
                    fontSize: sp(16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
