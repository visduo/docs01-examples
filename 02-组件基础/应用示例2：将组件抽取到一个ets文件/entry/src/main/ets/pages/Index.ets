// import导入组件
import Footer from '../components/Footer'

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