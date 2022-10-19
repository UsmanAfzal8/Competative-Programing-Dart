void main() {
  int res = solution([-1,0,-1,-1,1,0]);
  print(res);
}

int solution(List<int> nums) {
  int sum = 0;   
    int leftsum = 0;  
for(int x in nums){
    sum+=x;
}
           int rightsum= sum ;       
            for(int i = 0 ; i<nums.length;i++){
              rightsum-= nums[i]; 
                if (leftsum == rightsum){
                    return i;
                }else{
                    leftsum+= nums[i];
                };
            }
        return -1;
  // print(temp);
}
