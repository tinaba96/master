ngle : public Object
{
protected:
Vec3 vertex[3]; //三角形頂点
Vec3 normal; //法線
public:
//コンストラクタとデストラクタ
Triangle(Vec3, Vec3, Vec3);
˜Triangle(){};
//アクセスメソッド
Vec3∗ Normal(void)
