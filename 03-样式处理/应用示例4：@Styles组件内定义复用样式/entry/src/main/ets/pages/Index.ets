@Entry
@Component
struct Index {
  // 组件内定义复用样式
  @Styles
  myStyle() {
    .backgroundColor('red')
    .margin({bottom: 10})
    .onClick(() =>{
      console.log('click')
    })
  }

  build() {
    Row() {
      Column({space : 10}) {
        Button('Count--')
          // 调用自定义样式
          .myStyle()

        Button('Count++')
          // 调用自定义样式
          .myStyle()
      }
      .alignItems(HorizontalAlign.Start)
      .width('100%')
    }
    .height("100%")
    .padding(20)
    .alignItems(VerticalAlign.Top)
  }
}