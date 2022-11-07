import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/providers/auth.dart';
import 'package:shopping_cart/providers/deposit_provider.dart';
import 'package:shopping_cart/screens/auth_screen.dart';

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
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DepositProvider(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (context, value, child) => MaterialApp(
          theme: ThemeData.light(),
          home: AuthScreen(),
          onGenerateRoute: generateRoute,
        ),
      ),
    );
  }
}
