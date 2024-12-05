@Entry
@Component
struct Index {
  build() {
    RelativeContainer() {
      Text('Hello HarmonyOS')
        .fontSize(50) // 字体大小
        .fontWeight(FontWeight.Bold)  // 字体粗细
        .lineHeight(60) // 行高
    }
    .height('100%')
    .width('100%')
  }
}