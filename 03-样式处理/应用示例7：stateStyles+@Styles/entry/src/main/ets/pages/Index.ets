@Entry
@Component
struct Index {
  @Styles
  greenColor() {
    .backgroundColor('green')
  }

  @Styles
  redColor() {
    .backgroundColor('red')
  }

  build() {
    Row() {
      Column({space : 10}) {
        Button('按钮')
          .stateStyles({
            // 组件正常态时的样式
            normal: this.greenColor(),
            // 组件按压态的样式
            pressed: this.redColor()
          })
      }
      .alignItems(HorizontalAlign.Center)
      .width('100%')
    }
    .height("100%")
    .padding(20)
    .alignItems(VerticalAlign.Center)
  }
}