/*
* Some examples of using unique and shared pointers
*/
#include <memory>
#include <iostream>
#include <fstream>

using namespace std;

struct X{/* For example, stores nothing */};

/*
* An example using unique pointers
*/
void f(int i, int j){
  X* p = new X; // Allocated a new X
  unique_ptr<X> sp {new X}; // Allocate a new X and give it's pointer to unique_ptr
  if (i < 1099) return;
  delete p; // whoops, what happens if i >= 1099
}


/*
* An example using shared pointers 
*/
void f2(shared_ptr<fstream>);
void g(shared_ptr<fstream>);

void user(const string& name, ios_base::openmode mode){
  shared_ptr<fstream> fp {new fstream(name, mode)};
  if(!*fp) return;

  // fp will only be destroyed when both functions return
  f2(fp);
  g(fp);
}
