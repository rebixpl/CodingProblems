# class Solution:
#     def runningSum(self, nums: List[int]):
#         result=[]
#         for x in range(len(nums)): result.append(sum(nums[0:x+1]))
#         return result

# UP SOLUTION /\

nums = [3, 1, 2, 10, 1]

result = []
for x in range(len(nums)):
    result.append(sum(nums[0:x+1]))

print(result)
