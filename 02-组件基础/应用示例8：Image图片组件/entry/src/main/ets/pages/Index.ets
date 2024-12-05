@Entry
@Component
struct Index {
  build() {
    Column() {
      Image($r('app.media.avatar'))
        .width(50)

      Image($r('app.media.ic_public_heart'))
        .fillColor('red')
        .width(50)
    }
    .width('100%')
  }
}