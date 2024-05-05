import tabsView from '../../common/tool/tabsView'

@Entry
@Component
struct systemSetting{
  firstName:string='菜单管理'
  secondName:string='模块管理'
  thirdName:string='参数设置'
  fourthName:string='字典管理'
  fifthName:string='行政区划'
  sixteenName:string='国际化管理'
  firstImg:Resource=$r('app.media.percentage')
  secondImg:Resource=$r('app.media.clock')
  thirdImg:Resource=$r('app.media.manage')
  fourImg:Resource=$r('app.media.GITEE')
  fifthImg:Resource=$r('app.media.Conversion')
  sixteenImg:Resource=$r('app.media.baidu')
  build() {
    Navigation(){
      Scroll(){
        Column(){

          tabsView({
            firstTarBarContentName:this.firstName,
            secondTarBarContentName:this.secondName,
            thirdTarBarContentName:this.thirdName,
            fourTarBarContentName:this.fourthName,
            fifthTarBarContentName:this.fifthName,
            sixteenTarBarContentName:this.sixteenName,
            firstTarBarContentImg:this.firstImg,
            secondTarBarContentImg:this.secondImg,
            thirdTarBarContentImg:this.thirdImg,
            fourTarBarContentImg:this.fourImg,
            fifthTarBarContentImg:this.fifthImg,
            sixteenTarBarContentImg:this.sixteenImg,
            isVertical:true,
            barPosition:BarPosition.Start
          })

        }
      }

    }.title('组织管理')
    .titleMode(NavigationTitleMode.Mini)


  }

}