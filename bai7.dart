class Solution {
  int addDigits(int num) {
    int sum = 0;

    if (num < 10) return num;

    // Cộng các phần tử của num.
    while (true) {
      if (num == 0 && sum > 9) {
        num = sum;
        sum = 0;
      } else if (num <= 0 && sum <= 9) {
        break;
      }

      sum = sum + num % 10;
      num ~/= 10;
    }

    return sum;
  }
}
