class NumberConvertor {
  static final Map<String, String> _map = {
    "1": "壹",
    "2": "貳",
    "3": "參",
    "4": "肆",
    "5": "伍",
    "6": "陸",
    "7": "柒",
    "8": "捌",
    "9": "玖",
    "0": "零",
  };

  static String toText(String number) {
    return number.split("").map((e) => _map[e]).join();
  }
}