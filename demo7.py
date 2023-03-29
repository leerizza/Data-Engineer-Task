# for i in range(1,101):
#     for j in range(102,105):
#         print('i:' + str(i) + ',j: ' + str(j))


# n = 1
# while n < 5:
#     if n==1:
#         continue
#     print(n)

import time

now = time.time()
zone = "Asia/Jakarta"
print(now)
print(time.strftime("%b %d %Y %H:%M:%S", time.gmtime(now)))
print(time.timezone)