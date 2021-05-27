import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/netflixUI/tablet/netflix_tablet.dart';
import 'package:responsive_app/responsive_widget.dart';
import 'package:sizer/sizer.dart';
import './netflixUI/mobile/netflix.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          locale: DevicePreview.locale(context), // Add the locale here
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'Netflix Responsive',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ResponsiveHelper(
            mobile: NetflixApp(),
            tablet: NetflixTabletApp(),
          ),
        );
      },
    );
  }
}
