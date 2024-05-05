
interface homeList{
  title:string
  time:string
  imgPath:Resource
  clickTime:number
  totalNum:number
}

interface content{
  imgPath?:Resource
  title:string
  isExtend?:boolean
}

interface firstContent{
  title:string
  imgPath?:Resource
  arr?:content[]
  isExtend?:boolean
}

@Entry
@Component
struct HomePage {

  @State systemManage:content[]=[
    {title:'组织管理',imgPath:$r('app.media.manage')},
    {title:'权限管理',imgPath:$r('app.media.role')},
    {title:'系统设置',imgPath:$r('app.media.setting')},
    {title:'系统监控',imgPath:$r('app.media.listening')},
    {title:'消息推送',imgPath:$r('app.media.messages')},
    {title:'研发工具',imgPath:$r('app.media.yanfa')},
    {title:'社区',imgPath:$r('app.media.community')}
  ]

  @State extendArr:content[]=[
    {title:'站内消息',imgPath:$r('app.media.messages')},
    {title:'文件管理',imgPath:$r('app.media.file')},
    {title:'内容管理',imgPath:$r('app.media.management')},
    {title:'统计报表',imgPath:$r('app.media.count')},
    {title:'移动端管理',imgPath:$r('app.media.mobile_fill')},
    {title:'第三方账号管理',imgPath:$r('app.media.third')},
    {title:'统一认证服务平台',imgPath:$r('app.media.link')}
  ]

  @State process:content[]=[
    {title:'流程办理',imgPath:$r('app.media.workprocess')},
    {title:'流程管控',imgPath:$r('app.media.manage')},
    {title:'JFlow版本',imgPath:$r('app.media.version')}
  ]

  @State sideArr:firstContent[]=[

    {title:'系统管理',imgPath:$r('app.media.setting'),isExtend:false,arr:this.systemManage},
    {title:'扩展功能',imgPath:$r('app.media.extend2'),isExtend:false,arr:this.extendArr},
    {title:'业务流程',imgPath:$r('app.media.workprocess'),isExtend:false,arr:this.process},
    {title:'V4.x演示',imgPath:$r('app.media.presentation')},
    {title:'我的工作',imgPath:$r('app.media.job')},
    {title:'关于我们',imgPath:$r('app.media.aboutus')},
    {title:'在线文档',imgPath:$r('app.media.online')}

  ]

  @State username:string='test'

  @State searchInput:string=''

  arr:homeList[]=[
    {title:'工作台',time:'时',imgPath:$r("app.media.clock"),clickTime:1999,totalNum:120000},
    {title:'关于我们',time:'日',imgPath:$r("app.media.user"),clickTime:2999,totalNum:50000},
    {title:'源码下载',time:'周',imgPath:$r("app.media.download"),clickTime:3999,totalNum:120000},
    {title:'官网下载',time:'月',imgPath:$r("app.media.percentage"),clickTime:9999,totalNum:99999},
  ]

  timeId:number=0

  i:number=0

  do=()=>{
    if(this.timeId!=0)return
    this.timeId=setTimeout(()=>{
      console.log('scroll')
      console.log(`times:${this.i++}`)
      this.timeId=0
    },2000)
  }

  getNum=()=>Math.floor(Math.random()*155)

  getRGB=()=>`rgb(${this.getNum()},${this.getNum()},${this.getNum()})`

  @State showSideBar:boolean=false

  build() {
    SideBarContainer(SideBarContainerType.Overlay){
      Column(){
        Scroll(){
          Column({space:15}){

            Text('Demo')
              .fontColor(Color.White)
              .textAlign(TextAlign.Center)
              .fontWeight(FontWeight.Bolder)
              .width('100%')
              .margin({top:20})

            ForEach(this.sideArr,(item:firstContent,index:number)=>{

              Row({space:10}){

                Row({space:15}){

                  Image(item.imgPath).width(20).fillColor(Color.White)

                  Text(item.title).fontColor(Color.White)

                }

                if(item.isExtend!=undefined)
                Image(item.isExtend===false?$r('app.media.left'):$r('app.media.down2')).width(20).fillColor(Color.White)
                  .onClick(()=>{
                    item.isExtend=!item.isExtend
                    this.sideArr=[...this.sideArr]
                  })

              }.width('100%').justifyContent(FlexAlign.SpaceBetween)
              if(item.isExtend===true)
              Column({space:12}){
                ForEach(item.arr,(item2:content)=>{
                  Row({space:10}){

                    Row({space:15}){

                      Image(item2.imgPath).width(20).fillColor(Color.White)

                      Text(item2.title).fontColor(Color.White)

                    }

                    if(item2.isExtend!=undefined)
                      Image(item2.isExtend===false?$r('app.media.left'):$r('app.media.down2')).width(20).fillColor(Color.White)
                        .onClick(()=>{
                          item.isExtend=!item.isExtend
                          this.sideArr=[...this.sideArr]
                        })

                  }.width('100%').justifyContent(FlexAlign.SpaceBetween).margin({left:40})
                })
              }
            })

          }.padding(17)
        }
      }.width('40%')
      .backgroundColor('rgba(0,0,0,0.8)')
      Column({space:10}){

        Row({space:23}){

          Image($r('app.media.extend'))
            .width(20)
            .fillColor(Color.White)
            .onClick(()=>{
              this.showSideBar=true
            })

          Image($r('app.media.homePhoto'))
            .width(20)
            .fillColor(Color.White)

          Text(`当前用户:${this.username}`)
            .fontColor(Color.White)
            .fontSize(15)
            .fontWeight(FontWeight.Bolder)

        }.justifyContent(FlexAlign.Start).width('100%')
        .alignItems(VerticalAlign.Center)

        TextInput({placeholder:'请输入',text:$$this.searchInput})
          .backgroundColor(Color.White)
          .height(30).width('90%')
          .placeholderColor(Color.Gray)
          .placeholderFont({weight:20,size:13,style:FontStyle.Italic})

        Column({space:40}){
          ForEach(this.arr,(item:homeList,index:number)=>{
            Column({space:12}){
              Row(){

                Text(item.title)
                  .fontColor(Color.White)

                Text(item.time).fontColor(this.getRGB())

              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)

              Column({space:10}){
                Row(){

                  Text(`${item.clickTime}`)
                    .fontColor(Color.White)
                    .fontSize(20)

                  Image(item.imgPath)
                    .width(40)
                    .fillColor(Color.White)

                }.width('100%').justifyContent(FlexAlign.SpaceBetween)
                Row(){
                  Text('点击我')
                    .fontSize(15)
                    .fontColor(Color.White)

                  Text(`共${item.totalNum}`)
                    .fontColor(Color.White)
                    .fontSize(15)

                }.justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            }
            .border({color:Color.White,width:1})
            .padding(13)
            .borderRadius(15)

          })

        }.padding(20)


      }
      .justifyContent(FlexAlign.Start)
      .padding(12)
      .backgroundColor('rgb( 20, 20, 20)')
      .height('100%')
      .width('100%')
      .onClick(()=>{
        this.showSideBar=false
      })
    }.showSideBar(this.showSideBar)
    .showControlButton(false)

  }

  @Builder
  list() {
    List() {
      ForEach(Array.from({ length: 60 }), (item: undefined) => {
        ListItem() {
          Column() {
            Text('jjjjjjjj')
          }
        }
      })

    }.onScroll(() => {
      this.do()
    })
    .backgroundColor(Color.White)
  }
}