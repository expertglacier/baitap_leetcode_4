class Solution {
  void moveZeroes(List<int> nums) {
    int countNumberZero = 0;
    List<int> listZero = [];

    if (nums.length > 1) {
      for (int i = 0; i < nums.length; i++) {
        if (nums[i] == 0) {
          nums.remove(0);
          countNumberZero++;
          i--;
        }
      }
    }

    listZero = List.filled(countNumberZero, 0);
    nums.addAll(listZero);
  }
}
