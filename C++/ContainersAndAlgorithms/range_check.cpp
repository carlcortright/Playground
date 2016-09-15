#include <vector>
#include "streamio.cpp"
using namespace std;

/*
* Vector class that extends std::vector to include range checking
*
* Inherits everything from vector except for operator[] for range checking
*/
template<typename T>
class Vec: public std::vector<T>{
public:
  using vector<T>::vector;

  /*
  * Implements the range check
  */
  T& operator[](int i){
    return vector<T>::at(i);
  }

  /*
  * Implements the const range check
  */
  const T& operator[](int i) const{
    return vector<T>::at(i);
  }
};

/*
* Check range checking
*/
void checked(Vec<Entry>& book){
  try{
    book[book.size()] = {"Joe blow", 123}; // will throw and exception
  }catch(out_of_range){
    cout << "WARNING: Caught out_of_range exception!!!"
      << "Please check your indexes!" << "\n";
  }
}

int main(){
  Vec<Entry> book{};
  checked(book);
}
