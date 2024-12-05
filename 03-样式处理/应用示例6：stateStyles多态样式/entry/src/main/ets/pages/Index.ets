@Entry
@Component
struct Index {
  build() {
    Row() {
      Column({space : 10}) {
        // 可以获得获焦态的第一个元素会自动获焦，故该TextInput默认获得焦点
        TextInput()
          .stateStyles({
            // 组件获焦态的样式
            focused: {
              .backgroundColor('blue')
            }
          })

        Button('按钮')
          .stateStyles({
            // 组件正常态时的样式
            normal: {
              .backgroundColor('green')
            },
            // 组件按压态的样式
            pressed: {
              .backgroundColor('red')
            }
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