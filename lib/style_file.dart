
import 'package:flutter/material.dart';

TextStyle HeadTextStyle(){
  return const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
}

TextStyle SubTitel(){
  return const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
}




InputDecoration AppInputStyle(label){
  return  InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      fillColor: Colors.blue,
      filled: true,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      hintText: label,

      hintStyle: const TextStyle(
        color: Colors.white,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo),
      )
  );
}



ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 10),
    shadowColor: const Color(0x00000004),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    elevation: 4,

  );
}

