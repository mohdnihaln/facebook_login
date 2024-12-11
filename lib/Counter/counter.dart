import 'package:flutter/material.dart';
import 'package:get/get.dart';



class logincontroller extends GetxController{

  var count = 0.obs;
  
  increment() => count++;

  decrement() { 
    if (count > 0) {
        count--; }
  }
}