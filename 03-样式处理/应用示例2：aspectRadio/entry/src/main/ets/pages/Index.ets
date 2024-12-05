@Entry
@Component
struct Index {
  build() {
    Row() {
      Image($r('app.media.avatar'))
        .width(96)
        .aspectRatio(1)
    }.padding(20)
  }
}