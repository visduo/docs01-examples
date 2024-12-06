import promptAction from '@ohos.promptAction'

@Entry
@Component
struct Index {
  @State
  @Watch('onCountUpdate') // 监听count变化
  count: number = 0

  // 定义一个监听函数
  onCountUpdate() {
    promptAction.showToast({ message: 'count 变化' })
  }

  build() {
    Column({space: 16}){
      Text('count：' + this.count)

      Button('count++')
        .onClick(() => {
          this.count++
        })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}