@Entry
@Component
struct Index {
  build() {
    Row() {
      Text('请输入手机号：')

      // TextInput占满行组件剩余的宽度
      TextInput()
        .layoutWeight(1)
    }.padding(20)
  }
}