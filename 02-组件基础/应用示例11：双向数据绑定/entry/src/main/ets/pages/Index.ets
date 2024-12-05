@Entry
@Component
struct Index {
  @State phone:string = ''

  build() {
    Row() {
      Column({space: 10}) {
        Row() {
          // TextInput双向数据绑定：
          // 1、通过onChange事件将状态变量与文本实时绑定
          // 2、通过text属性设置输入框的文本内容
          TextInput({text: this.phone, placeholder: '请输入手机号'})
            .onChange((value) => {this.phone = value})
        }

        Row() {
          Button('重置')
            .backgroundColor('#CCCCCC')
            .margin(10)
            .onClick(() => {
              this.phone = ''
            })
          Button('登录')
            .margin(10)
            .onClick(() => {
              console.log('success')
            })
        }

        Row() {
          Text('输入的手机号：' + this.phone)
        }
      }
      .width('100%')
    }
    .height("100%")
    .padding(20)
    .alignItems(VerticalAlign.Top)
  }
}