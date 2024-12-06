import router from '@ohos.router'

@Entry
@Component
struct Index {
  build() {
    Column({space: 16}) {
      Button('Router pushUrl Other')
        .onClick(() => {
          // 路由跳转到pages/Other，有浏览记录
          router.pushUrl({
            url:'pages/Other',
            // 传递参数
            params: {
              id: 1,
              message: 'Hello HarmonyOS'
            }
          })
        })
    }
    .padding(20)
    .width('100%')
  }
}