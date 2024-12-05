@Entry
@Component
struct Index {
  build() {
    Row() {
      Text('Hello HarmonyOS')
        .fontSize(22)
    }
    .alignItems(VerticalAlign.Top)  // 垂直居上
    .justifyContent(FlexAlign.Center)  // 水平居中
    .width('100%')
  }
}