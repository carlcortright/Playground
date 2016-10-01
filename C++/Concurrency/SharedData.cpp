/*
* Some examples of manipulating shared data using mutex objects
*/
#include <mutex>

mutex m;
mutex m1;
mutex m2;
mutex m3;
int sh;

void f(){
  unique_lock<mutex> lck {m};
  sh += 7;
} // The mutex gets released implicitly

void f2(){
  unique_lock<mutex> lck1 {m1, defer_lock};
  unique_lock<mutex> lck1 {m2, defer_lock};
  unique_lock<mutex> lck1 {m3, defer_lock};

  lock(lck1, lck2, lck3); // Prevents process deadlock with multiple mutexes
}
