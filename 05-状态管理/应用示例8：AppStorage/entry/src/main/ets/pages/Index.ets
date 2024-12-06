import promptAction from '@ohos.promptAction'

// 初始化数据
AppStorage.setOrCreate('count', 10)

@Entry
@Component
struct Index {
  // 建立双向数据同步
  @StorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('AppStorage count is ' + this.count)
      Button('count++')
        .onClick(() =>{
          // count被修改
          this.count++
        })

      Button('Get++')
        .onClick(() =>{
          // 获取数据
          const count = AppStorage.get<number>('count')
          promptAction.showToast({ message: 'count is ' + count })
        })

      Button('Set++')
        .onClick(() =>{
          // 修改数据
          const count = AppStorage.set('count', 99)
          promptAction.showToast({ message: 'count set ' + count })
        })

      Divider()

      Child()
    }
    .padding(20)
  }
}

@Component
struct Child {
  // 建立双向数据同步
  @StorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('Child')
      Text('count is ' + this.count)
    }
  }
}