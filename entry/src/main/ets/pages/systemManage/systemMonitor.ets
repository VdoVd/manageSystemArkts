import tabsView from '../../common/tool/tabsView'

@Entry
@Component
struct systemMonitor{
  firstName:string='访问日志'
  secondName:string='数据监控'
  thirdName:string='缓存监控'
  fourthName:string='服务器监控'
  fifthName:string='作业监控'
  sixteenName:string='在线用户'
  seventeenName:string='在线文档'
  firstImg:Resource=$r('app.media.percentage')
  secondImg:Resource=$r('app.media.clock')
  thirdImg:Resource=$r('app.media.manage')
  fourImg:Resource=$r('app.media.GITEE')
  fifthImg:Resource=$r('app.media.Conversion')
  sixteenImg:Resource=$r('app.media.baidu')
  seventeenImg:Resource=$r('app.media.online')
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
            seventeenTarBarContentName:this.seventeenName,
            firstTarBarContentImg:this.firstImg,
            secondTarBarContentImg:this.secondImg,
            thirdTarBarContentImg:this.thirdImg,
            fourTarBarContentImg:this.fourImg,
            fifthTarBarContentImg:this.fifthImg,
            sixteenTarBarContentImg:this.sixteenImg,
            seventeenTarBarContentImg:this.seventeenImg,
            isVertical:true,
            barPosition:BarPosition.Start
          })

        }
      }

    }.title('组织管理')
    .titleMode(NavigationTitleMode.Mini)


  }

}