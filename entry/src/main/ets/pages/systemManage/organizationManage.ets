import tabsView from '../../common/tool/tabsView'

@Entry
@Component
struct organizationManage{
  firstName:string='用户管理'
  secondName:string='机构管理'
  thirdName:string='公司管理'
  fourthName:string='岗位管理'
  firstImg:Resource=$r('app.media.percentage')
  secondImg:Resource=$r('app.media.clock')
  thirdImg:Resource=$r('app.media.manage')
  fourImg:Resource=$r('app.media.GITEE')

  @Builder
  userManageContent(){

    Scroll(){

      Column(){

        Row(){
          Text('序号').fontColor(Color.White)
          Text('登录账户').fontColor(Color.White)
          Text('用户昵称').fontColor(Color.White)
          Text('员工姓名').fontColor(Color.White)
        }.width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }.height('100%')
      .width('100%')
      .padding(20)
      .backgroundColor(Color.Black)

    }

  }

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
            fourTarBarContentImg:this.fourImg,
            firstContent:()=>{this.userManageContent()}
          })
        }
      }

    }.title('组织管理')
    .titleMode(NavigationTitleMode.Mini)


  }

}