@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('Hello HarmonyOS')
        .fontSize(22)
    }
    .width('100%')  // 宽度
    .alignItems(HorizontalAlign.End)  // 水平居右
    .justifyContent(FlexAlign.Start)  // 垂直居上
  }
}