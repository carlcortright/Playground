/*
* Some examples using the std::threads library
*/
#include <thread>
#include <iostream>

using namespace std;

void g(){ cout << "Parallel World! \n"; }

void f() { cout << "Hello "; }

void user(){
  // Make two threads
  thread t1 {f};
  thread t2 {g};

  // Wait for each thread
  t1.join();
  t2.join();
}
