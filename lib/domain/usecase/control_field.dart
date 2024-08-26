import 'package:flutter/material.dart';

abstract class ControlField {
  void verificarCampos(){}
  void resetCampos(){}
  void calcular(){}
  List<String> responseList(){
    return [];
  }
  List<TextEditingController> controllerList(){
    return [];
  }
}