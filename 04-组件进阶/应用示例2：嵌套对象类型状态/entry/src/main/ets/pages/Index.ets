// 定义对象模型
class Role {
  roleName: string = ''
}

class User {
  name: string = ''
  age: number = 0
  // User嵌套Role
  role: Role = new Role()
}

@Entry
@Component
struct Index {
  // 实例化User对象
  @State
  user: User = {
    name: '张三',
    age: 18,
    role: {
      roleName: '技术部'
    }
  }

  build() {
    Row() {
      Column({space: 10}) {
        Text('姓名：' + this.user.name)
        Text('年龄：' + this.user.age)
        Text('部门名称：' + this.user.role.roleName)

        Button('age++')
          .onClick(() => {
            this.user.age++
          })

        Button('role change 1')
          .onClick(() => {
            // 在JavaScript中引用数据类型，变量保存的值是引用地址
            // 直接修改this.user.role.roleName导致user.role的内存地址未变化
            // @State无法监测到数据的变化
            this.user.role.roleName = '综合部'
          })

        Button('role change 2')
          .onClick(() => {
            // 将旧的role对象复制到一个新对象
            const role = new Role()
            role.roleName = '综合部'

            // 将新的role对象赋值给user对象
            this.user.role = role
          })
      }
      .width('100%')
    }
    .padding(20)
  }
}