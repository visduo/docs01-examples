// 定义Footer组件
@Component
struct Footer {
  build() {
    Text('这是Footer组件')
  }
}

@Entry
@Component
struct Index {
  build() {
    RelativeContainer() {
      // 在页面中调用Footer组件
      Footer()
    }
    .height('100%')
    .width('100%')
  }
}