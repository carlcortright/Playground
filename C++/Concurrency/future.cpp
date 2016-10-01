/*
* An example using std::future
*/
#include <future>

struct X{}; // Placeholder struct

/*
* Sends a message through a promise
*/
void f(promise<X>& px){
    X res;
    px.set_value(res);
}

/*
* Receives the message with a future
*/
void g(future<X>& fx){
  X v = fx.get();
}
