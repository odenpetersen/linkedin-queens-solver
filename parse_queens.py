#!/usr/bin/env python3
with open('queens.html','r') as f:
    f=f.read()

import numpy as np
grid = [s for s in f.split('cell-color-')[1:]]
grid = [s.split(' ',1)[0] for s in grid]
grid = np.array([int(s.split('-',1)[0]) for s in grid])
width = int(np.sqrt(len(grid)))
grid = grid.reshape(width,width)
print(grid)
with open('grid.lp','w') as f:
    f.write('\n'.join([f'cell({i},{j},{x}).'for i,row in enumerate(grid) for j,x in enumerate(row)]))
