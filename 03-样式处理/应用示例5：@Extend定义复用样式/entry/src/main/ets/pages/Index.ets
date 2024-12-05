@Extend(Text) // 指定扩展Text组件
function myStyle(color:string, cb:()=>void) {
  .backgroundColor(color)
  .padding(10)
  .border({radius : 6})
  .onClick(cb)
}

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column({space : 10}) {
        Text('Text按钮1')
          .myStyle('green', () => {
            console.log('Text1 Click')
          })

        Text('Text按钮2')
          .myStyle('red', () => {
            console.log('Text2 Click')
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