class Solution {
  bool isUgly(int n) {
    if (n == 1) return true;
    if (n < 1) return false;

    // Kiểm tra n có chia hết cho 2, 3 và 5 không?
    while (n > 1) {
      if (n % 2 == 0) {
        n ~/= 2;
      } else if (n % 3 == 0) {
        n ~/= 3;
      } else if (n % 5 == 0) {
        n ~/= 5;
      } else {
        return false;
      }
    }

    return true;
  }
}
