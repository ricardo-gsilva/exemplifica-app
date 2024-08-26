import 'package:exemplifica/domain/usecase/control_field.dart';
import 'package:flutter/material.dart';

class ControlFieldWithLabel implements ControlField {
  
  List<String> labelList(){
    return [];
  }
  
  @override
  void calcular() {}
  
  @override
  List<TextEditingController> controllerList() {
    return [];
  }
  
  @override
  void resetCampos() {}
  
  @override
  List<String> responseList() {
    return [];
  }
  
  @override
  void verificarCampos() {}
}