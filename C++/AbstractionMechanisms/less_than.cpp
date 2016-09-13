/*
* Template function less-than object
*
* The operator() can be used to compare if the pass in object is less than the
* initialized object.
*
* Functors like this one carry the value that is to be compared against with
* them. 
*/
template<typename T>
class Less_than{
  const T val;
public:
  Less_than(const T& v) :val(v) {}
  bool operator()(const T& x) const { return x<val; }
}
