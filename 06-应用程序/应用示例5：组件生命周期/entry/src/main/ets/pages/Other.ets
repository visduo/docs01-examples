import router from '@ohos.router'

// 获取参数对象
const params = router.getParams() as Record<string, string>

@Entry
@Component
struct Other {
  build() {
    Column({space: 16}) {
      // 获取参数
      Text('接收到的id参数为：' + params['id'])
      Text('接收到的message参数为：' + params['message'])
    }
    .padding(20)
    .width('100%')
  }
}