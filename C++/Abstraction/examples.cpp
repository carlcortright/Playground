/*
* A function that uses tempates to sum the values in a container
*/
template<typename Container, typename Value>
Value Sum(const Container& c, Value v){
  for(auto x : c)
    v+=x;
  return v;
}
