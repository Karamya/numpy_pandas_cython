import numpy as np
cimport numpy as np
cimport cython

@cython.boundscheck(False)
@cython.wraparound(False)
@cython.nonecheck(False)
cpdef double quadratic_mean2(np.ndarray[np.double_t] x):
    # ...len(x)
    # ...x[i]
    cdef double s = 0.0
    cdef unsigned int i, n = len(x)
    for i in range(n):
        s += x[i]*x[i]
    return (s/n)**0.5
    