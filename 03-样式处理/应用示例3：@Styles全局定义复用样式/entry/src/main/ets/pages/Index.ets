// 全局定义复用样式
@Styles
function myStyle() {
  // 支持统一样式
  .backgroundColor('green')
  .margin({bottom: 10})
  // 支持通用事件
  .onClick(() =>{
    console.log('click')
  })
}

@Entry
@Component
struct Index {
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