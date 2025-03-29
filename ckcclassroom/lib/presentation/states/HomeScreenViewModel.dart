import 'package:ckcclassroom/data/repositoties/UserRepository.dart';
import 'package:flutter/material.dart';

class Homescreenviewmodel extends ChangeNotifier {
  final Userrepository _userrepository;
  Homescreenviewmodel(this._userrepository);

  bool isListClasses = true;
  bool isExpanded = false;
  static int _pageIndex = 0;
  static final PageController _pageController =
      PageController(initialPage: _pageIndex);

  PageController get pageController => _pageController;

  void moveToPage(index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
    // pageController.jumpToPage(index);
  }

  void setCurrentIndexPage(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  void setIsListClasses(bool value) {
    isListClasses = value;
    moveToPage(value ? 0 : 1);
    notifyListeners();
  }

  void setIsExpanded(bool value) {
    isExpanded = value;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }
}
