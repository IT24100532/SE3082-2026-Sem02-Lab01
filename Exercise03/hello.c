#include <stdio.h>
#include <omp.h>

int main() {
    // Start of parallel region
    #pragma omp parallel
    {
        int thread_id = omp_get_thread_num();     // Get the current thread ID
        int total_threads = omp_get_num_threads(); // Get total number of threads

        printf("Hello from thread %d out of %d threads!\n", thread_id, total_threads);
    }

    return 0;
}
