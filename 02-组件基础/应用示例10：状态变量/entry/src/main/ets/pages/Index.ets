@Entry
@Component
struct Index {
  // 状态变量，数据改变，界面自动变化
  @State
  count: number = 0

  build() {
    Column() {
      Text(this.count.toString())

      Button('++')
        .onClick(() => {
          this.count++
          console.log("按钮被点击啦")
        })
    }
    .width('100%')
  }
}