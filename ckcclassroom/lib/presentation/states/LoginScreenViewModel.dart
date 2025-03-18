import 'package:ckcclassroom/data/repositoties/UserRepository.dart';
import 'package:flutter/material.dart';

class Loginscreenviewmodel extends ChangeNotifier {
  final Userrepository _userrepository;
  Loginscreenviewmodel(this._userrepository);
}
