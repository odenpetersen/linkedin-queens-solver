#!/usr/bin/env python3
with open('queens.html','r') as f:
    f=f.readlines()
f = f[0]

import numpy as np
grid = np.array([int(s.split('-',1)[0])for s in f.split('cell-color-')[1:]])
width = int(np.sqrt(len(grid)))
grid = grid.reshape(width,width)
with open('grid.lp','w') as f:
    f.write('\n'.join([f'cell({i},{j},{x}).'for i,row in enumerate(grid) for j,x in enumerate(row)]))
