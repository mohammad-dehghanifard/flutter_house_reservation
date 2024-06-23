import 'package:get/get.dart';

class FilterAndSearchController extends GetxController {
//======================================== Variables ===========================

  int selectedScore = 0;
  final List<String> facilities = [
    "پارکینگ","سرویس نظافت","وعده غذایی","آسانسور","رو به نما",
  ];
  final List<int> selectedFacilities = [0];
//======================================== Functions ===========================
  void changeScore(int newIndex) {
    selectedScore = newIndex;
    update();
  }

  void addOrRemoveFacilities(int index) {

    if(selectedFacilities.isNotEmpty) {
      selectedFacilities.remove(0);
      update();
    }

    if(selectedFacilities.contains(index)) {
      selectedFacilities.remove(index);
      if(selectedFacilities.isEmpty){
        selectedFacilities.add(0);
      }
      update();
    } else {
      selectedFacilities.add(index);
      update();
    }
  }
}