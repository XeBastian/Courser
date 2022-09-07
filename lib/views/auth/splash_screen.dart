import 'package:courser/components.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: GlowingProgressIndicator(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          Constants.iconImageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'StackApps\nCopyright©️ 2022',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
