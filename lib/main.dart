import 'package:firstflutterapp/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(){
  runApp(const MissionOne());
}

class MissionOne extends StatelessWidget {
  const MissionOne({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          BookingForm.routeName: (context) => BookingForm()
        }
    );
  }
}