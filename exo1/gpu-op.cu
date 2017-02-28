/*********************************************************************************/
/* Matrix product program for a multi-core CPU and for a many-core GPU           */
/* S. Vialle - November 2016                                                     */
/*********************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <cuda.h> 
#include <cuda_runtime.h>

#include "main.h"
#include "gpu-op.h"


/*-------------------------------------------------------------------------------*/
/* GPU symbols                                                                   */
/*-------------------------------------------------------------------------------*/
__device__ T_real GPU_A[SIZE][SIZE];
__device__ T_real GPU_B[SIZE][SIZE];
__device__ T_real GPU_C[SIZE][SIZE];


/*-------------------------------------------------------------------------------*/
/* Init and finalize the GPU device.                                             */
/*-------------------------------------------------------------------------------*/
void gpuInit(void)
{
  cuInit(0);
}


void gpuFinalize(void)
{

}


/*-------------------------------------------------------------------------------*/
/* Transfer of CPU input data into GPU symbols                                   */
/*-------------------------------------------------------------------------------*/
void gpuSetDataOnGPU(void)
{
 // Set GPU_A symbol
 //CHECK_CUDA_SUCCESS(cudaMemcpyToSymbol(...),
 //                   "Transfer A-->GPU_A");

 // Set GPU_B symbol
 // ...
}


/*-------------------------------------------------------------------------------*/
/* Transfer of GPU results into CPU array                                        */
/*-------------------------------------------------------------------------------*/
void gpuGetResultOnCPU(void)
{
 // Get GPU_C symbol
 // ...
}


/*-------------------------------------------------------------------------------*/
/* Small matrix product on the local GPU.                                        */
/*-------------------------------------------------------------------------------*/
__global__ void MatrixProductKernel_v0(void)
{
 // Index computations
 //int lig = 
 //int col = 
 //T_real res = 0.0;

 // Matrix product computation
 // ...
}


/*-------------------------------------------------------------------------------*/
/* Small matrix product on the local GPU.                                        */
/*-------------------------------------------------------------------------------*/
void gpuProduct(gkid_t kid)
{
 dim3 Dg, Db;

 switch(kid) {

 case GK0 : // Kernel v0 - using only global memory (with coalescent data accesses)
   // - init the grid of blocs
   //Db.x = ;
   //Db.y = ;
   //Db.z = ;
   //Dg.x = ;
   //Dg.y = ;
   //Dg.z = ;
   // - run the Grid of Blocs of threads
   //MatrixProductKernel_v0<<<Dg,Db>>>();
   break;

 case GK1 :
  break;

 case GK2 :
  break;
  
 case GK3 :
  break;

 case GK4 :
  break;
  
 case GK5 :
  break;

 default :
   fprintf(stderr,"Unknown GPU kernel!");
   exit(EXIT_FAILURE);
 }
}




