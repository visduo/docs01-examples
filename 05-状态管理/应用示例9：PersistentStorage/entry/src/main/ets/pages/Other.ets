// 通过getShared接口获取stage共享的LocalStorage实例
@Entry({ storage: LocalStorage.getShared() })
@Component
struct Other {
  @LocalStorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('Other Page')
      // 数据是双向的
      Text('LocalStorage count is ' + this.count)
      Button('count++')
        .onClick(() =>{
          this.count++
        })

      Navigator({target: 'pages/Index'}) {
        Button('点我跳转到Home Page')
      }
    }
    .padding(20)
    .width('100%')
  }
}