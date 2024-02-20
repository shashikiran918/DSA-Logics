//First Logic
List<T> rotateList<T>(list,rotateBy) {
  rotateBy = rotateBy % list.length; 
  if (rotateBy < 0) {
    rotateBy += list.length;
  }
  return [...list.sublist(rotateBy), ...list.sublist(0, rotateBy)];
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int rotateBy = -3;
  List<int> rotatedList = rotateList(numbers, rotateBy);
  print(rotatedList);  // Output: [3, 4, 5, 1, 2]
}

//Second Logic
List<T> rotateList<T>(List<T> list, int rotateBy) {
  rotateBy = rotateBy % list.length; 
  if (rotateBy < 0) {
    rotateBy += list.length;
  }
  
  List<T> rotatedList = List.from(list);
  for (int i = 0; i < rotateBy; i++) {
    rotatedList.insert(0, rotatedList.removeAt(rotatedList.length - 1));
  }
  
  return rotatedList;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int rotateBy = -3;
  List<int> rotatedList = rotateList(numbers, rotateBy);
  print(rotatedList); // Output: [3, 4, 5, 1, 2]
}

//Third Logic
List<T> rotateList<T>(List<T> list, int rotateBy) {
  final length = list.length;
  if (length == 0) return list;

  rotateBy %= length;
  if (rotateBy < 0) {
    rotateBy += length;
  }

  for (int i = 0; i < rotateBy; i++) {
    T firstElement = list.removeAt(0);
    list.add(firstElement);
  }
  
  return list;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int rotateBy = -3;
  List<int> rotatedList = rotateList(numbers, rotateBy);
  print(rotatedList); // Output: [3, 4, 5, 1, 2]
}

