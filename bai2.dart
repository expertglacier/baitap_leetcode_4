class Solution {
  void moveZeroes(List<int> nums) {
    int countNumberZero = 0;
    List<int> listZero = [];

    // Xoá các số 0 khỏi List nums, và đếm xem đã xoá bao nhiêu số 0.
    if (nums.length > 1) {
      for (int i = 0; i < nums.length; i++) {
        if (nums[i] == 0) {
          nums.remove(0);
          countNumberZero++;
          i--;
        }
      }
    }

    // Thêm số lượng số 0 đã xoá vào cuối List nums.
    listZero = List.filled(countNumberZero, 0);
    nums.addAll(listZero);
  }
}
