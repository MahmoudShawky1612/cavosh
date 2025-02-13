import 'package:cavosh/core/constants/colors.dart';
  import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  final String text;
  final Icon prefixIcon;
  final Color prefixIconColor;
  final IconData? suffixIcon;
  final bool isPassword;
   const CustomTextField({super.key, required this.text, required this.prefixIcon, required this.prefixIconColor,  this.suffixIcon,  this.isPassword=false}) ;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isShown =false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {

    return  TextField(
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.primary), // Highlighted border
        ),

        labelText: widget.text,
        prefixIcon: Icon(widget.prefixIcon.icon, color: widget.prefixIconColor),
        suffixIcon:widget.isPassword ?IconButton(onPressed: ()=>setState(() {
          isShown = !isShown;
          obscureText = !obscureText;
        }),
            icon: Icon( isShown == true ? Icons.visibility_outlined   : Icons.visibility_off_outlined  )): null
      ),
    );
  }
}