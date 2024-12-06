@Entry
@Component
struct Index {
  // 组件内定义自定义构建函数
  @Builder
  myBuilderFunction(title: string) {
    Text(title)
      .fontColor(Color.Gray)
  }

  build() {
    Column(){
      Row() {
        Text('评价 (2000)')
          .layoutWeight(1)
          .fontWeight(FontWeight.Bold)

        // 调用组件内自定义构建函数
        // 传递title参数
        this.myBuilderFunction('查看更多 >>')
      }
      .padding(10)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#ffeaeaea')
  }
}