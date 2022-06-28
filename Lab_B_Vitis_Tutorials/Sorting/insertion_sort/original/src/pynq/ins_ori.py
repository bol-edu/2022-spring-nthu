
# coding: utf-8

# In[2]:


import numpy as np
from time import time

from pynq import Overlay 
from pynq import allocate
SIZE = 16 
ol = Overlay("ins_ori.bit")
ip = ol.ins_ori_0

inbuffer0 = allocate(shape=(SIZE,), dtype = np.int32)
outbuffer0 = allocate(shape=(SIZE,), dtype = np.int32)


# In[3]:


for i in range(SIZE):
   inbuffer0[i] = int(SIZE-i)
print(inbuffer0)


# In[4]:


for i in range (SIZE):
    ip.write( 0x40+4*i , int(inbuffer0[i]))


# In[6]:


ip.write(0x00 , 0x01)
while (ip.read(0x00) & 0x4) == 0x0 :
    continue
for i in range (SIZE):
    outbuffer0[i] = ip.read(0x80 + 4 * i)
print(outbuffer0)

