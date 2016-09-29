/*
* Some examples using the std::threads library
*/
#include <thread>

using namespace std;

void f();

struct F{
  void operator()();
};

void user(){
  // Make two threads
  thread t1 {f};
  thread t2 {F};

  // Wait for each thread
  t1.join();
  t2.join();
}
