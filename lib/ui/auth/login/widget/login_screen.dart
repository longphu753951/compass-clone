import 'package:compass_app/ui/auth/login/widget/tilted_card.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/dimension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TiltedCard(),
            Padding(
              padding: Dimension.of(context).edgeInsetsScreenSymmetric,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(),
                  const SizedBox(height: Dimension.paddingVertical),
                  TextField(obscureText: true,),
                  const SizedBox(height: Dimension.paddingVertical),
                  FilledButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

