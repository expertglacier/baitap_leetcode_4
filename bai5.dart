class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int result = 0;

    // Kiểm tra xem mỗi kí tự trong jewels xuất hiện bao nhiêu lần trong stones.
    for (int i = 0; i < jewels.length; i++) {
      for (int j = 0; j < stones.length; j++) {
        if (jewels[i] == stones[j]) result++;
      }
    }

    return result;
  }
}
