import numpy as np
import pyximport
pyximport.install(setup_args={"include_dirs": np.get_include()})

import cython_module
np.random.seed(123)
x = np.random.rand(10000)
print(cython_module.quadratic_mean2(x))
