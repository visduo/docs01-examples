import promptAction from '@ohos.promptAction'

@Entry
@Component
struct Index {
  aboutToAppear() {
    promptAction.showToast({message: '组件创建'})
  }

  build() {
    Column({space: 16}) {
      Text('首页')
    }
    .padding(20)
    .width('100%')
  }
}