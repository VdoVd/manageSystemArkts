@Component
export default struct tabsView{
  @Prop
  barPosition:BarPosition=BarPosition.End
  @Prop
  isVertical:boolean=false
  @Prop
  firstTarBarContentName:string=''
  @Prop
  firstTarBarContentImg:Resource
  @Prop
  secondTarBarContentName:string=''
  @Prop
  secondTarBarContentImg:Resource
  @Prop
  thirdTarBarContentName:string=''
  @Prop
  thirdTarBarContentImg:Resource
  @Prop
  fourTarBarContentName:string=''
  @Prop
  fourTarBarContentImg:Resource
  @Prop
  fifthTarBarContentName:string=''
  @Prop
  fifthTarBarContentImg:Resource
  @Prop
  sixteenTarBarContentName:string=''
  @Prop
  sixteenTarBarContentImg:Resource
  @Prop
  seventeenTarBarContentName:string=''
  @Prop
  seventeenTarBarContentImg:Resource
  @Prop
  eighteenTarBarContentName:string=''
  @Prop
  eighteenTarBarContentImg:Resource
  @Builder
  defaultFirstContent(){
    Text('First')
  }

  @Builder
  defaultSecondContent(){
    Text('Second')
  }

  @Builder
  defaultThirdContent(){
    Text('Third')
  }

  @Builder
  defaultFourContent(){
    Text('Four')
  }

  @Builder
  defaultFifthContent(){
    Text('fifth')
  }

  @Builder
  defaultSixteenContent(){
    Text('Six')
  }

  @Builder
  defaultSeventeenContent(){
    Text('seven')
  }

  @Builder
  defaultEighteenContent(){
    Text('eight')
  }

  @BuilderParam firstContent:()=>void=this.defaultFirstContent
  @BuilderParam secondContent:()=>void=this.defaultSecondContent
  @BuilderParam thirdContent:()=>void=this.defaultThirdContent
  @BuilderParam fourContent:()=>void=this.defaultFourContent
  @BuilderParam fifthContent:()=>void=this.defaultFifthContent
  @BuilderParam sixthContent:()=>void=this.defaultSixteenContent
  @BuilderParam seventeenContent:()=>void=this.defaultSeventeenContent
  @BuilderParam eighteenContent:()=>void=this.defaultEighteenContent
  @State selected:number=0
  @Builder
  tarBarBuilder(title:string,imgPath?:Resource,index?:number){

    Column(){

      Image(imgPath)
        .width(20)

      Text(title)
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontColor(this.selected===index?Color.White:Color.Blue)
        .backgroundColor(this.selected===index?Color.Blue:Color.White)
        .height(30)
        .borderRadius(10)
        .fontSize(10)

    }
  }

  build() {

    Tabs(){

      TabContent(){
        this.firstContent()
      }.tabBar(this.tarBarBuilder(this.firstTarBarContentName,this.firstTarBarContentImg,0))
      if(this.secondTarBarContentName!='')
      TabContent(){
        this.secondContent()
      }.tabBar(this.tarBarBuilder(this.secondTarBarContentName,this.secondTarBarContentImg,1))
      if(this.thirdTarBarContentName!='')
      TabContent(){
        this.thirdContent()
      }.tabBar(this.tarBarBuilder(this.thirdTarBarContentName,this.thirdTarBarContentImg,2))
      if(this.fourTarBarContentName!='')
      TabContent(){
        this.fourContent()
      }.tabBar(this.tarBarBuilder(this.fourTarBarContentName,this.fourTarBarContentImg,3))
      if(this.fifthTarBarContentName!='')
      TabContent(){
        this.fifthContent()
      }.tabBar(this.tarBarBuilder(this.fifthTarBarContentName,this.fifthTarBarContentImg,4))
      if(this.sixteenTarBarContentName!='')
      TabContent(){
        this.sixthContent()
      }.tabBar(this.tarBarBuilder(this.sixteenTarBarContentName,this.sixteenTarBarContentImg,5))
      if(this.seventeenTarBarContentName!='')
      TabContent(){
        this.seventeenContent()
      }.tabBar(this.tarBarBuilder(this.seventeenTarBarContentName,this.seventeenTarBarContentImg,6))
      if(this.eighteenTarBarContentName!='')
      TabContent(){
        this.eighteenContent()
      }.tabBar(this.tarBarBuilder(this.eighteenTarBarContentName,this.eighteenTarBarContentImg,7))

    }.onTabBarClick((index)=>{
      this.selected=index
    })
    .barPosition(this.barPosition)
    .vertical(this.isVertical)
  }
}