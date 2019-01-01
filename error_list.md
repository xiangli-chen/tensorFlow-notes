# Error List

```
InternalError (see above for traceback): Blas GEMM launch failed 
```

GPU run out of resource.

Run ```nvidia-smi``` to check GPU usage situation.

if it happens in running multiple Tensorflow processes, pass either ```per_process_gpu_memory_fraction``` or ```allow_growth``` should be passed to the TensorFlow Session in a ```ConfigProto``` to prevent one process from using all the GPU memory.
