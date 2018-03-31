import pickle
import matplotlib.pyplot as plt
import numpy as np
plt.style.use('ggplot')

with open('tune.pickle', 'rb') as f:
    data = pickle.load(f)

n1=np.mean(data['neuron1'],axis=0)
n2=np.mean(data['neuron2'],axis=0)
n3=np.mean(data['neuron3'],axis=0)
n4=np.mean(data['neuron4'],axis=0)

plt.plot(n1, label='neuron 1')
plt.plot(n2, label='neuron 2')
plt.plot(n3, label='neuron 3')
plt.plot(n4, label='neuron 4')
plt.legend()
plt.savefig("firing_rate.png")
plt.show()
