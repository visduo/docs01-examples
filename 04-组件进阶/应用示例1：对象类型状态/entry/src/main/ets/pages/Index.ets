// 定义对象模型
class User {
  name: string = ''
  age: number = 0
}

@Entry
@Component
struct Index {
  // 实例化User对象
  @State
  user: User = {
    name: '张三',
    age: 18
  }

  build() {
    Row() {
      Column({space: 10}) {
        Text('姓名：' + this.user.name)
        Text('年龄：' + this.user.age)

        Button('age++')
          .onClick(() => {
            this.user.age++
          })
      }
      .width('100%')
    }
    .padding(20)
  }
}