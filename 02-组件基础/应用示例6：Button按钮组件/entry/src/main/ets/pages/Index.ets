@Entry
@Component
struct Index {
  build() {
    Row() {
      // 普通按钮
      Button('Button')

      // 圆形按钮
      Button('Button', { type: ButtonType.Circle })
      Button('Button')
        .type(ButtonType.Circle)

      // 按钮点击事件
      Button('Button')
        .onClick(() => {
          console.log('Button click')
        })
    }
    .width('100%')
  }
}