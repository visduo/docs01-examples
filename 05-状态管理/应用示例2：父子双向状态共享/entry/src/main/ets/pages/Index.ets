@Entry
@Component
struct Index {
  @State
  count: number = 0

  build() {
    Column({space: 16}){
      Text('父组件的count：' + this.count)

      Button('parent count++')
        .onClick(() => {
          this.count++
        })

      Divider()

      // 在父组件中调用子组件
      // 父组件的count传递给子组件
      // 双向传递不能使用this传递，要使用$传递
      Child({count: $count})
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

@Component
struct Child {
  // 子组件要接收一个 count 参数
  @Link
  count: number

  build() {
    Column({space: 16}){
      Text('子组件接收到的count：' + this.count)

      // 子组件按钮被点击，父子 count 均发生变化
      Button('child count++')
        .onClick(() => {
          this.count++
        })
    }
  }
}