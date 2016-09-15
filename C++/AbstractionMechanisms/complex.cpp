/*
* Complex number class
*/
class Complex{
double re, im;
public:
  Complex(double r, double i): re{r}, im{i} {}
  Complex(double r): re{r}, im{0} {}
  Complex(): re{0}, im{0} {}

  double real() const { return re; }
  void real(double d) { re = d; }
  double imag() const { return im; }
  void imag(double i) { im = i; }

  // operator overrides
  Complex& operator+=(Complex z) { re+=z.re; im+=z.im; return *this; }
  Complex& operator-=(Complex z) { re-=z.re; im-=z.im; return *this; }

  Complex& operator*=(Complex);
  Complex& operator/=(Complex);
};

void test_complex(Complex z1){
  Complex z2 {z1};
  Complex z3;
  z3 = z2;
}
