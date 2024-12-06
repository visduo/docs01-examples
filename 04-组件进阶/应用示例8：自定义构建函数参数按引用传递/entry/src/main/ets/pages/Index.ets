class Nav {
  title: string = ''
}

@Entry
@Component
struct Index {
  @State
  rate: number = 0

  // 组件内定义自定义构建函数
  // $$：按引用传递参数的范式
  @Builder
  myBuilderFunction($$: Nav) {
    Text($$.title)
      .fontColor(Color.Gray)
  }

  build() {
    Column(){
      Row() {
        Text('评价 (2000)')
          .layoutWeight(1)
          .fontWeight(FontWeight.Bold)

        // 调用组件内自定义构建函数
        // 引用传递title参数
        // this.rate变化时，UI变化
        this.myBuilderFunction({title: 'rate is ' + this.rate})
      }
      .padding(10)

      Row() {
        Button('rate++')
          .onClick(() => {
            this.rate++
          })
      }
      .padding(10)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#ffeaeaea')
  }
}