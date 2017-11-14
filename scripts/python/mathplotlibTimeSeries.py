import matplotlib.pyplot as plt
import datetime
import numpy as np
import time

print("Starting to draw")

x = np.array([datetime.datetime(2013, 9, 28, i, 0) for i in range(24)])
y = np.random.randint(100, size=x.shape)

#plt.plot(x,y)
#plt.show()

fig = plt.figure()
plt.axis([0, 100, 0, 1])

i = 1
x = list()
y = list()
while i < 10:
    temp_y = i
    x.append(i)
    y.append(temp_y)
    plt.plot(i, 10)
    i += 1
    plt.draw()
    plt.pause(0.10)



# fig = plt.figure()
# plt.axis([0, 1000, 0, 1])
#
# i = 0
# x = list()
# y = list()
#
# while i < 1000:
#     temp_y = np.random.random()
#     x.append(i)
#     y.append(temp_y)
#     plt.scatter(i, temp_y)
#     i += 1
#     plt.draw()
#     plt.pause(0.05)
