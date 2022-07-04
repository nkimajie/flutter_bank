import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/providers/auth.dart';
import 'package:shopping_cart/screens/screens.dart';

import 'core/navigators/navigators.dart';

void main() => runApp(
      const MyApp(),
    );

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) {
//           return MyApp();
//         },
//       ),
//     );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Auth()),
      ],
      child: Consumer<Auth>(
          builder: (context, value, child) => MaterialApp(
                theme: ThemeData.dark(),
                home: const SplashScreen(),
                onGenerateRoute: generateRoute,
              )),
    );
  }
}
