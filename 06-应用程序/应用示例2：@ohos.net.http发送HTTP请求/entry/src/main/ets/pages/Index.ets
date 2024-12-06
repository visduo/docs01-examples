import http from '@ohos.net.http'

@Entry
@Component
struct Index {
  @State
  data: string = ''

  build() {
    Column({space: 16}) {
      Button('send request')
        .onClick(() => {
          // 创建 HTTP 请求对象
          http.createHttp().request('https://wwc.6os.net/addons/test_api/api.php?userName=多仔')
            .then((response) => {
              console.log('response：' + response)

              // 获取服务器返回的数据
              this.data = response.result.toString()
            })
            .catch((err: Error) => {
              // 请求失败查看错误信息
              console.log('request error：' + err.message)
            })
        })

      Text('请求结果：' + this.data)

    }
    .padding(20)
    .width('100%')
  }
}