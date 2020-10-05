#include <iostream>
using namespace std;
class Vec3
{
public:
float x, y, z;
void input(float x0, float y0, float z0);
void output(void);
};
void Vec3::input(float x0, float y0, float z0)
{
x = x0; y = y0; z = z0;
}
void Vec3::output(void)
{
cout << "v = (" << x << ", ";
cout << y << ", ";
cout << z << ")" << endl;
}
int main(void)
{
Vec3 v;
v.input(1.0f, 2.0f, 3.0f);
v.output();
return 0;
}
