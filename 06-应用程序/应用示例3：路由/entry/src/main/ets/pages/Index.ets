import router from '@ohos.router'

@Entry
@Component
struct Index {
  build() {
    Column({space: 16}) {
      Text('Index')

      Button('Router pushUrl Other')
        .onClick(() => {
          // 路由跳转到pages/Other，有浏览记录
          router.pushUrl({url:'pages/Other'})
        })

      Button('Router replaceUrl Other')
        .onClick(() => {
          // 路由跳转（替换）到pages/Other，无浏览记录
          router.replaceUrl({url: 'pages/Other'})
        })
    }
    .padding(20)
    .width('100%')
  }
}