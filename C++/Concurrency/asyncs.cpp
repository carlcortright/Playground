/*
* An example using asynchronous programming in c++
*/
#include <future>
#include <algorithm>

using namespace std;

/*
* Define accumulate so that it can be split in to tasks
*/
double accum(double* beg, double* end, double init){
  return accumulate(beg, end, init);
}

double comp(vector<double>& v){
  // declare start value and size
  auto v0 = &v[0];
  auto sz = v.size();

  if(v.size() < 10000) return accum(v0, &v[sz], 0.0);

  // Futures to sum each part of the vector
  auto f0 = async(accum, v0, v0+sz/4, 0.0);
  auto f1 = async(accum, v0+sz/4, v0+sz/2, 0.0);
  auto f2 = async(accum, v0+sz/2, v0+3*(sz/4), 0.0);
  auto f3 = async(accum, v0+3*(sz/4), v0+sz, 0.0);

  return f0.get() + f1.get() + f2.get() + f3.get(); // return the sum of all
}
