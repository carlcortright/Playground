/*
* An example of using condition_variables to solve the producer-consumer problem
*/
#include <condition_variable> // Allows thread to wait for another
#include <mutex>
#include <queue>
#include <iostream>
#include "message.cpp"

using namespace std;

// Global data to be used by both prodcer and consumer
queue<message> mqueue;
condition_variable mcond;
mutex mmutex;

/*
* Consumer function
*/
void consumer(){
  unique_lock<mutex> lck {mmutex};
  mcond.wait(lck); // Busy wait for the condition
  // After the while, we have the mutex back
  auto m = mqueue.front();
  mqueue.pop();
  lck.unlock(); // Unlock the mutex

  cout << m.message;
}

/*
* Producer function
*/
void producer(){
  while(true){
    message m;
    m.message = "Hello world! To infinity!";
    unique_lock<mutex> lck{mmutex};
    mqueue.push(m);
    mcond.notify_one();
  } // lck is released at end of scope
}
