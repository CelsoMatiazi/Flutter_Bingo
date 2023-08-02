

class BallModel{
  int number;
  int column;
  bool isMark;

  BallModel({
    required this.number,
    required this.column,
    this.isMark = false,
  });

  @override
  bool operator == (Object other) {
    if(other == number) return true;
    return false;
  }
}

