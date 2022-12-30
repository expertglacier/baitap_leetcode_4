class Solution {
  int singleNumber(List<int> nums) {
    nums.sort();
    print(nums);

    // Kiểm tra phần tử đầu tiên có phải phần tử lặp 1 lần không?
    if (nums.length == 1 || nums[0] != nums[1]) return nums[0];

    // Tìm kiếm phần tử lặp 1 lần từ index 2 đến index (nums.length)-2
    for (int i = 2; i < nums.length-1; i++) {
      if (nums[i] == nums[i+1]) {
        print(nums[i]);
        i++;
        continue;
      } else {
        return nums[i];
      }
    }

    return nums[nums.length-1];
  }
}
