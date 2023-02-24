import 'package:flutter/material.dart';

class CurveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 5 * size.height / 6);
    path.quadraticBezierTo(
      size.width / 4,
      4 * size.height / 6,
      size.width / 2,
      5 * size.height / 6,
    );
    path.quadraticBezierTo(
      3 * size.width / 4,
      size.height,
      size.width,
      5 * size.height / 6,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget CustomTFF({
  required String lableText,
  required IconData PrefixIcon,
  IconData? suffixIcon,
  TextInputType keyboardType=TextInputType.text,
  bool obscureText=false,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      keyboardType: keyboardType,
      obscureText:obscureText ,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(PrefixIcon, color: Colors.deepPurple),
          suffixIcon:suffixIcon==null?null: Icon(
              suffixIcon,
              color: Colors.deepPurple
          ),
          labelText: lableText,
          labelStyle: TextStyle(color: Colors.deepPurple)),
    ),
  );
}
Widget CustomButton({
  Color buttonColor=Colors.deepPurple,
  Color textColor=Colors.white,
  required String textButton,
  bool border=false,
}){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(10),
      border:border?Border.all(
        color:Colors.deepPurple,
        width: 1,
      ):null,
    ),
    child: MaterialButton(
      height: 50,
      onPressed:(){},
      child:Text(
        textButton,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ) ,
    ),
  );
}
