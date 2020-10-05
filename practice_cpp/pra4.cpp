class Vec3
{
private:
float x, y, z;
public:
//コンストラクタとデストラクタ
Vec3();
Vec3(float x0, float y0, float z0);
˜Vec3();
public:
void input(float x0, float y0, float z0);
void output(void);
};
Vec3::Vec3()
{
cout << "constructor" << endl;
}
Vec3::Vec3(float x0, float y0, float z0)
{
x = x0; y = y0; z = z0;
cout << "constructor2" << endl;
}
Vec3::˜Vec3()
{
cout << "destructor" << endl;
}
int main(void)
{
Vec3 v(1.0f, 2.0f, 3.0f);
v.output();
return 0;
}
