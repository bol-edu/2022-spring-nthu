from pynq import Overlay
import numpy as np
from time import time

ol = Overlay("system.bit")

ipCORDIC = ol.cordic_0

astype(int) #convert to int

s = np.zeros(90)
c = np.zeros(90)
start = time()
for i in range(89):
    #write rad
    ipCORDIC.write(0x10, int(rad[i]))
    #ap start
    ipCORDIC.write(0x00, 0x01)
    while True:
        if((ipCORDIC.read(0x1c) == 1) & (ipCORDIC.read(0x2c) == 1)):
            s[i] = ipCORDIC.read(0x18)
            c[i] = ipCORDIC.read(0x28)
            break
    print('degree = {deg}, cos = {cos}, sin = {sin}'.format(deg = deg[i], cos = c[i] / 1024, sin = s[i] / 1024))        
end = time()
print("Kernel execution time: " + str(end - start) + " s")
