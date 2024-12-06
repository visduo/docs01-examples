// 父组件
@Entry
@Component
struct Index {
  // 父组件定义数据
  // 自动对其所有后代组件可用
  @Provide
  count: number = 0

  build() {
    Column({space: 16}){
      Text('父组件的count：' + this.count)

      // 父组件按钮被点击，父、子、后代count均发生变化
      Button('parent count++')
        .onClick(() => {
          this.count++
        })

      Divider()

      // 父组件调用子组件
      Child()
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

// 子组件
@Component
struct Child {
  build() {
    Column({space: 16}){
      Text('子组件')

      Divider()

      // 子组件调用后代组件
      GrandSon()
    }
  }
}

// 后代组件
@Component
struct GrandSon {
  // 后代组件直接接收父组件传递的count
  @Consume
  count: number

  build() {
    Column({space: 16}){
      Text('后代组件接收到的count：' + this.count)

      // 后代组件按钮被点击，父、子、后代 count 均发生变化
      Button('child count++')
        .onClick(() => {
          this.count++
        })
    }
  }
}