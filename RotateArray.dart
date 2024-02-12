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
  print(rotatedList); 
}
