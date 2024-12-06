class User {
  name: string = ''
  age: number = 0
}

@Entry
@Component
struct Index {
  // 实例化User对象数组
  @State
  userList: User[] = [
    { name: '张三', age: 18 },
    { name: '李四', age: 19 },
    { name: '王五', age: 20 },
    { name: '唐三藏', age: 21 },
    { name: '孙悟空', age: 22 },
    { name: '猪八戒', age: 23 },
    { name: '沙悟净', age: 24 }
  ]

  build() {
    Row() {
      Column({space: 10}) {
        ForEach(this.userList, (item: User, index: number) => {
          Text('id is ' + index + ', name is ' + item.name + ', age is ' + item.age)
        })
      }
      .width('100%')
    }
    .padding(20)
  }
}