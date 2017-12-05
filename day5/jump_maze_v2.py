from __future__ import print_function
import numpy as np

jumps = np.loadtxt('input.txt', dtype=np.int)
njump = 0
current_index = 0
num_instructions = jumps.shape[0]

while (current_index >= 0 and current_index < num_instructions):
    jump_value = jumps[current_index]
    if (jump_value >= 3):
        jumps[current_index] = jump_value - 1
    else:
        jumps[current_index] = jump_value + 1
    current_index = current_index + jump_value
    njump = njump + 1
print(njump)
