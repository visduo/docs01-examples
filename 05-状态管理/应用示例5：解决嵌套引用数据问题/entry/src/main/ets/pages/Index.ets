// 使用@Observed装饰User类
@Observed
class User {
  name: string
  age: number

  // 类必须提供构造方法
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}

// 父组件
@Entry
@Component
struct Index {
  // 实例化User对象数组
  @State
  userList: User[] = [
  // 对象数组中的对象要使用new创建
  // 通过初始化构造函数的方式往数组中添加
    new User('张三', 18),
    new User('李四', 19)
  ]

  build() {
    Column({space: 16}){
      Text('父组件区域')

      Divider()

      // 父组件调用子组件1展示信息
      Text('子组件1区域')
      ForEach(this.userList, (item: User, index: number) => {
        Child({user: item})
      })

      Divider()

      // 父组件调用子组件2展示信息
      // 可以观察到this.userList的变化
      Text('子组件2区域')
      ForEach(this.userList, (item: User, index: number) => {
        ItemList({user: item})
      })

      // ForEach遍历的是同一个this.userList
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

// 子组件1
@Component
struct Child {
  // 接收@Observed装饰的类的实例
  // 进行双向数据绑定
  @ObjectLink
  user: User

  build() {
    Row({space: 16}) {
      Text(this.user.name + '的年龄是：' + this.user.age)

      // 子组件1中的数据被修改，父组件的userList中的数据也被修改
      // 故子组件2中的数据也被修改
      Button('age++')
        .onClick(() => {
          this.user.age++
        })
    }
  }
}

// 子组件2
@Component
struct ItemList {
  @ObjectLink
  user: User

  build() {
    Row({space: 16}) {
      Text(this.user.name + '的年龄是：' + this.user.age)
    }
  }
}