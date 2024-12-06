// 创建一个LocalStorage实例
const localStorage = new LocalStorage()
localStorage.setOrCreate('count', 10);

// 将实例对象传给Entry
@Entry(localStorage)
@Component
struct Index {
  // 建立双向数据同步
  @LocalStorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('我是父组件')
      Text('count is ' + this.count)

      // 按钮点击，父子组件数据均会发生变化
      Button('count++')
        .onClick(() => {
          this.count++
        })

      Divider()

      // 父组件调用子组件
      Child()
    }
    .padding(20)
  }
}

@Component
struct Child {
  // 建立双向数据同步
  @LocalStorageLink('count')
  count: number = 0

  build() {
    Column({space: 16}) {
      Text('我是子组件')
      Text('count is ' + this.count)
    }
  }
}