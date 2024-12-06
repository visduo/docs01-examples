import router from '@ohos.router'

@Entry
@Component
struct Other {
  build() {
    Column({space: 16}) {
      Text('Other')

      Button('返回上一页')
        .onClick(() => {
          // 路由返回到上一页
          router.back()
        })
    }
    .padding(20)
    .width('100%')
  }
}