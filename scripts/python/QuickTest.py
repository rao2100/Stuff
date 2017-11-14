import matplotlib.pyplot as plt

from numpy.random import normal
gaussian_numbers = normal(size=1000)

from numpy.random import normal

print("Hello there")

gaussian_numbers = normal(size=1000)
plt.hist(gaussian_numbers)
plt.title("Gaussian Histogram")
plt.xlabel("Value")
plt.ylabel("Frequency")
plt.show()