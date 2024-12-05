@Entry
@Component
struct Index {
  // 组件变量，数据改变，界面不会自动变化
  count = 0

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