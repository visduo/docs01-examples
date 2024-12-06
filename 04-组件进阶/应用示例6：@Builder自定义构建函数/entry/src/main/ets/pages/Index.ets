// 全局定义自定义构建函数
@Builder
function publicBuilderFunction() {
  Text('查看更多 >>')
    .fontColor(Color.Gray)
}

@Entry
@Component
struct Index {
  // 组件内定义自定义构建函数
  @Builder
  myBuilderFunction() {
    Text('查看更多 >>')
      .fontColor(Color.Gray)
  }

  build() {
    Column(){
      Row() {
        Text('评价 (2000)')
          .layoutWeight(1)
          .fontWeight(FontWeight.Bold)

        // 调用组件内自定义构建函数
        this.myBuilderFunction()
      }
      .padding(10)

      Row() {
        Text('推荐')
          .layoutWeight(1)

        // 调用全局自定义构建函数
        publicBuilderFunction()
      }
      .padding(10)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#ffeaeaea')
  }
}