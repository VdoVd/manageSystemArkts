@Entry
@Component
struct HomePage {

  @State username:string='test'

  build() {

    Column(){
      Row(){
        Image($r('app.media.extend'))
          .width(30)
          .fillColor(Color.White)
        Text('当前用户')
      }.justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height('100%')

    }.justifyContent(FlexAlign.Start)
    .padding(12)
    .backgroundColor('rgb( 20, 20, 20)')
  }

}