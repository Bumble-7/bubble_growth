#!/usr/bin/env python
# coding: utf-8

# In[99]:


import pylab as pl
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


# In[104]:


Volume = []
Time = []
for i in range(0,7):
    # print(i)
    data = pd.read_csv("Tstep_"+str(i)+".csv")
    Volume.append(data.Volume[0])
    Time.append(data.Time[0])


# In[108]:


dict = {'Time': Time, 'Volume': Volume} 
df = pd.DataFrame(dict) 
df.to_csv('Final_data.csv') 


# In[50]:


plt.plot(Time,Volume)
pl.xlabel('Time in seconds')
pl.ylabel('Bubble radius in micro meter')
pl.title('Bubble radius with time')
pl.show()
pl.clf()


# In[ ]:




