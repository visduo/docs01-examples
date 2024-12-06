@Entry
@Component
struct Index {
  // 是否显示加载动效组件
  @State
  loading: boolean = true

  build() {
    Row() {
      Column({space: 10}) {
        // 按钮点击切换加载动效
        Button('change')
          .onClick(() => {
            this.loading = !this.loading
          })

        // 条件判断
        if(this.loading) {
          LoadingProgress()
        } else {
          Text('Hello HarmonyOS')

          // 条件渲染会销毁和创建组件，因此切换时输入框的数据不会被保留
          TextInput()
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}