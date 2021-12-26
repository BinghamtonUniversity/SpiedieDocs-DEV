#include <stdio.h>
#include <omp.h>
 
int main() {
  #pragma omp parallel
  {
    int id = omp_get_thread_num();
    int total = omp_get_num_threads();
    printf("Greetings from process %d out of %d \n", id, total);
  }
  printf("parallel for ends.\n");
  return 0;
}