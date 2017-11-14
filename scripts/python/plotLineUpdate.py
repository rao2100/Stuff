import matplotlib.pyplot as plt
from drawnow import drawnow
import numpy as np

constSize = 1000

def makeFig():
    plt.plot(xList, yList)

    #plt.scatter(xList,yList)

plt.ion() # enable interactivity
fig=plt.figure() # make a figure

xModel=np.arange(constSize)
yModel=np.empty(constSize)
yModel.fill(0.5)

xList=list()
yList=list()

plt.plot(xModel, yModel)
plt.plot(xList, yList)
plt.legend(['modelTps', 'realTimeTps'], loc='upper left')
plt.gca().set_color_cycle(['red'])

for i in np.arange(constSize):
    y=np.random.random()
    xList.append(i)
    yList.append(y)
    #drawnow(makeFig)
    makeFig()
    plt.draw()
    plt.pause(0.05)