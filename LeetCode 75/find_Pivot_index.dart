void main() {
  int res = solution([-1,0,-1,-1,1,0]);
  print(res);
}

int solution(List<int> nums) {
  int temp = 0;
  int temp2 = 0;
  int result = -1;
  for (int i = 1; i < nums.length; i++) {
    temp += nums[i];
  }
  if (temp == 0) {
    result = 0;
    return result;
  }
  
  bool tempa = false;
  //-1,-1,0,0,-1,-1
  if (nums.length > 2) {
    for (int i = 1; i < nums.length - 1; i++) {
      int a = 0;
      int b = 0;
      for (int j = 0; j < i; j++) {
        a += nums[j];
      }

      for (int k = i + 1; k < nums.length; k++) {
        b += nums[k];
      }

      if (a == b) {
        result = i;
        tempa = true;
        break;
      }
    }
  }
  if (tempa) {
    return result;
  } else {
    for (int i = nums.length - 2; i >= 0; i--) {
    temp2 += nums[i];
  }
  if (temp2 == 0) {
    result = nums.length - 1;
    return result;
  }
  }
  return result;
  // print(temp);
}
