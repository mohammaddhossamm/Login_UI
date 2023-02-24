import 'package:flutter/material.dart';

import 'shared_com.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurveClip(),
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.deepPurple,
                alignment: AlignmentDirectional.center,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16,bottom: 16,end: 16
              ),
              child: Column(
                children: [
                  CustomTFF(
                    lableText: 'Full name',
                    PrefixIcon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: 10,),
                  CustomTFF(
                    lableText: 'Phone number',
                    PrefixIcon: Icons.phone_rounded,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10,),
                  CustomTFF(
                    lableText: 'E-mail',
                    PrefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10,),
                  CustomTFF(
                    lableText: 'Password',
                    PrefixIcon: Icons.lock_outline_rounded,
                    suffixIcon: Icons.visibility_off_outlined,
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  CustomTFF(
                    lableText: 'Confirm password',
                    PrefixIcon: Icons.lock_outline_rounded,
                    suffixIcon: Icons.visibility_off_outlined,
                    obscureText: true,
                  ),
                  SizedBox(height: 20,),
                  CustomButton(textButton: 'Register'),
                  SizedBox(height: 10,),
                  CustomButton(
                    border: true,
                    textColor: Colors.deepPurple,
                    textButton: 'Login',
                    buttonColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
