
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

int BlockDim()
{
	cudaDeviceProp prop;
	cudaGetDeviceProperties(&prop,0);
	return prop.maxThreadsPerBlock;
}
int GridDim()
{
	cudaDeviceProp prop;
	cudaGetDeviceProperties(&prop,0);
	return prop.maxGridSize[0];
}
int major()
{
	cudaDeviceProp prop;
	cudaGetDeviceProperties(&prop,0);
	return prop.major;
}
int minor()
{
	cudaDeviceProp prop;
	cudaGetDeviceProperties(&prop,0);
	return prop.minor;
}