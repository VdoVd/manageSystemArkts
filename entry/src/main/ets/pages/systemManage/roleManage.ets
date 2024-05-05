import tabsView from '../../common/tool/tabsView'

@Entry
@Component
struct roleManage{
  firstName:string='角色管理'
  secondName:string='二级管理员'
  thirdName:string='租户管理员'
  fourthName:string='安全审计'
  firstImg:Resource=$r('app.media.user')
  secondImg:Resource=$r('app.media.user')
  thirdImg:Resource=$r('app.media.user')
  fourImg:Resource=$r('app.media.job')
  build() {
    Navigation(){
      Scroll(){
        Column(){

          tabsView({
            firstTarBarContentName:this.firstName,
            secondTarBarContentName:this.secondName,
            thirdTarBarContentName:this.thirdName,
            fourTarBarContentName:this.fourthName,
            firstTarBarContentImg:this.firstImg,
            secondTarBarContentImg:this.secondImg,
            thirdTarBarContentImg:this.thirdImg,
            fourTarBarContentImg:this.fourImg
          })

        }
      }

    }.title('权限管理')
    .titleMode(NavigationTitleMode.Mini)


  }

}