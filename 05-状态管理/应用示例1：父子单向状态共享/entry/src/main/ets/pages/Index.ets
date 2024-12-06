// 父组件
@Entry
@Component
struct Index {
  // 父组件声明数据
  @State
  count: number = 0

  build() {
    Column({space: 16}){
      Text('父组件的count：' + this.count)

      // 父组件按钮被点击，父子count均发生变化
      Button('parent count++')
        .onClick(() => {
          this.count++
        })

      Divider()

      // 在父组件中调用子组件
      // 父组件的count传递给子组件
      Child({count: this.count})
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

// 子组件
@Component
struct Child {
  // 子组件要接收一个count参数
  @Prop
  count: number

  build() {
    Column({space: 16}){
      Text('子组件接收到的count：' + this.count)

      // 子组件按钮被点击，子count发生变化
      // 父count不变，为单向数据传递
      Button('child count++')
        .onClick(() => {
          this.count++
        })
    }
  }
}