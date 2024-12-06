// 定义对象模型
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
    { name: '王五', age: 20 }
  ]


  build() {
    Row() {
      Column({space: 10}) {
        Text('姓名：' + this.userList[0].name)
        Text('年龄：' + this.userList[0].age)

        Button('age++ 1')
          .onClick(() => {
            this.userList[0].age++
          })

        Button('age++ 2')
          .onClick(() => {
            const user = new User()
            user.name = this.userList[0].name
            user.age = this.userList[0].age
            user.age++
            this.userList[0] = user
          })
      }
      .width('100%')
    }
    .padding(20)
  }
}