class Solution {
  int findComplement(int num) {
    // Convert num to binary number.
    String numConvertToBinary = num.toRadixString(2);
    
    String flipBinaryNumber = "";

    // Lật tất cả số 0 thành 1, và số 1 thành 0.
    for (int i = 0; i < numConvertToBinary.length; i++) {
      if (numConvertToBinary[i] == '0') {
        flipBinaryNumber += '1';
      } else if (numConvertToBinary[i] == '1') {
        flipBinaryNumber += '0';
      }
    }

    // Convert binary number đã lật thành phần bù (complement) của num.
    int complement = int.parse(flipBinaryNumber, radix: 2);

    return complement;
  }
}
