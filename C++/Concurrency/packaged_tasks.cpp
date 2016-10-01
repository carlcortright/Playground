/*
* Some examples using packaged_tasks for promise/future combos
*/
#include <future>
#include <algorithm>
#include <thread>

using namespace std;

double accum(double* beg, double* end, double init){
  return accumulate(beg, end, init);
}

double comp2(vector<double>& v){
  using Task_type = double(double*, double*, double);

  packaged_task<Task_type> pt0{accum};
  packaged_task<Task_type> pt1{accum};

  future<double> f0 {pt0.get_future()};
  future<double> f1 {pt1.get_future()};

  double* first = &v[0];
  thread t1 {move(pt0), first, first+v.size()/2, 0};
  thread t2 {move(pt1), first+v.size()/2, &v[v.size()], 0};

  return f0.get() + f1.get();
}
