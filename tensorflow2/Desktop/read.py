import glob
import numpy as np

for filename in glob.glob("*.npy"):
    print(filename)
    arr = np.load(filename)
    #print(arr)
    #arr0 = arr[arr>0]
    print(np.shape(arr))
