import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct Login {

  @State username:string=''
  @State password:string=''

  build() {

      Column() {

        Column({space:25}){
          Text('登录')
            .textAlign(TextAlign.Center)
            .width('100%')
            .fontWeight(FontWeight.Bolder)
            .fontSize(26)

          TextInput({placeholder:'用户名',text:$$this.username})
            .backgroundColor('rgba(0,0,0,0.1)')

          TextInput({placeholder:'密码',text:$$this.password})
            .type(InputType.Password)
            .backgroundColor('rgba(0,0,0,0.1)')

          Row(){
            Row(){
              Checkbox().shape(CheckBoxShape.ROUNDED_SQUARE)
              Text('记住我')
                .fontColor(Color.Gray)
            }
            Text('忘记密码?')
              .fontColor(Color.Blue)
          }.width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Button('登录')
            .width('100%')
            .onClick(()=>{
              if(this.username===''){
                promptAction.showToast({message:'用户名为空'})
              }else if(this.password===''){
                promptAction.showToast({message:'密码为空'})
              }else {
                promptAction.showToast({message:'登录成功'})
                setTimeout(()=>{
                  router.pushUrl({
                    url:"pages/HomePage"
                  })
                })
              }
            })

          Text('其他方式登录')
            .fontColor(Color.Gray)
            .width('100%')
            .fontSize(15)
            .textAlign(TextAlign.Center)

          Row({space:15}){
            Image($r("app.media.qq")).width(30)
            Image($r('app.media.GITEE')).width(30)
            Image($r('app.media.baidu')).width(30)
            Image($r('app.media.openChina')).width(30)
            Image($r('app.media.github')).width(30)
          }.width('100%').justifyContent(FlexAlign.SpaceAround)
        }
        .width('100%')
        .borderRadius(30)
        .padding(20)
        .backgroundColor(Color.White)

      }
      .width('100%')
      .padding(20)
      .backgroundColor('rgb(63,96,181)')
      .height('100%')
      .justifyContent(FlexAlign.Center)

  }
}