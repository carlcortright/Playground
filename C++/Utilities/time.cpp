/*
* Some examples using the std time utility
*/
#include <chrono>
#include <iostream>
/*
* Playin' with time
*/
int main(){
  using namespace std::chrono;

  auto t0 = high_resolution_clock::now();
  int x = 1 + 1; // =2
  std::cout << x << std::endl;
  auto t1 = high_resolution_clock::now();
  auto deltT = t1 - t0;
}
