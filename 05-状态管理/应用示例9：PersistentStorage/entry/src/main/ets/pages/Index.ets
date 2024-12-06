// 初始化数据
// AppStorage.SetOrCreate('count', 10)
// 运行时，先到硬盘上查找count，若数据不存在，初始化值为10
PersistentStorage.persistProp('count', 10)

@Entry
@Component
struct Index {
  // 通过AppStorage的方式建立双向数据同步
  @StorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('PersistentStorage count is ' + this.count)
      Button('count++')
        .onClick(() =>{
          this.count++
        })

      Divider()
    }
    .padding(20)
  }
}