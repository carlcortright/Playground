class Shape {
public:
  virtual Point Center() const =0;
  virtual void Move(Point to) =0;

  virtual void Draw() const =0;
  virtual void Rotate(int angle) =0;

  // Don't use the default move operation
  Shape(Shape&&) =delete;
  Shape& operator=(Shape&&) =delete;

  // Don't use the default copy operation
  Shape(const Shape&) =delete;
  Shape& operator=(const Shape&) =delete; // =delete suppresses any operation



  virtual ~Shape() {}
};

class Circle : public Shape {
public:
  Circle(Point p, Radius r);

  Point center() const { return x; }
  void moveTo(Point to) { x = to; }

  void draw() const;
  void rotate(int);

private:
  Point x;
  int r;
};

class Point{
double x,y;
public:
  Point(int x, int y): x{x}, y{y} {}
};
