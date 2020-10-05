#ifndef VEC3 H
#define VEC3 H
#include <iostream>
using namespace std;
//クラスの宣言
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
//入出力関数
void input(float x0, float y0, float z0);
void output(void);
};
#endif
