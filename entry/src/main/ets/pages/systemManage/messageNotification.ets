import tabsView from '../../common/tool/tabsView'

@Entry
@Component
struct messageNotification{
  firstName:string='未完成消息'
  secondName:string='已完成消息'
  thirdName:string='消息末班管理'
  firstImg:Resource=$r('app.media.percentage')
  secondImg:Resource=$r('app.media.clock')
  thirdImg:Resource=$r('app.media.manage')
  build() {
    Navigation(){
      Scroll(){
        Column(){

          tabsView({
            firstTarBarContentName:this.firstName,
            secondTarBarContentName:this.secondName,
            thirdTarBarContentName:this.thirdName,
            firstTarBarContentImg:this.firstImg,
            secondTarBarContentImg:this.secondImg,
            thirdTarBarContentImg:this.thirdImg,
          })

        }
      }

    }.title('消息推送')
    .titleMode(NavigationTitleMode.Mini)


  }

}