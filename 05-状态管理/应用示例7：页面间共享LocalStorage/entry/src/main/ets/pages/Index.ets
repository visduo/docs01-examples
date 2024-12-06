// 通过getShared接口获取stage共享的LocalStorage实例
@Entry({ storage: LocalStorage.getShared() })
@Component
struct Index {
  // 建立双向数据同步
  @LocalStorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('Home Page')
      Text('LocalStorage count is ' + this.count)
      Button('count++')
        .onClick(() =>{
          this.count++
        })

      Navigator({target: 'pages/Other'}) {
        Button('点我跳转到 Other Page')
      }
    }
    .padding(20)
    .width('100%')
  }
}