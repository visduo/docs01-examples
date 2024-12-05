@Entry
@Component
struct Index {
  build() {
    Column() {
      // 普通的单行文本框
      TextInput({placeholder: '请输入手机号'})

      // 密码类型的单行文本框
      TextInput()
        .type(InputType.Password)

      // 单行文本框内容变化回调事件
      TextInput()
        .onChange((value) => {
          console.log('new value is ' + value)
        })
    }
    .width('100%')
  }
}