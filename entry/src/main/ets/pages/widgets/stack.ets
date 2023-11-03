import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';

@Component
@Entry
struct StackWidgets {
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  scroller: Scroller = new Scroller()

  build() {
    Column(){
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller){
        Column() {
          Stack({}){
            Column().backgroundColor(Color.Blue).width('100%').height('100%')
            Column().backgroundColor(Color.Yellow).width('60%').height('60%')
            Column().backgroundColor(Color.Red).width('30%').height('30%')
          }
          .width('40%').aspectRatio(1)
          .padding(10).alignContent(Alignment.TopStart)


          Stack({}){
            Column().backgroundColor(Color.Blue).width('100%').height('100%')
            Column().backgroundColor(Color.Yellow).width('60%').height('60%')
            Column().backgroundColor(Color.Red).width('30%').height('30%')
          }
          .width('40%').aspectRatio(1)
          .padding(10).alignContent(Alignment.BottomEnd)

          Stack({alignContent:Alignment.Center}){
            Column().backgroundColor(Color.Blue).width('100%').height('100%')
            Column().backgroundColor(Color.Yellow).width('60%').height('60%')
            Column().backgroundColor(Color.Red).width('30%').height('30%')
          }
          .width('40%').aspectRatio(1)
          .padding(10)


          Stack({alignContent:Alignment.Center}){
            Column().backgroundColor(Color.Red).width('30%').height('30%')
              .zIndex(2)//z轴 优先级提升
            Column().backgroundColor(Color.Yellow).width('60%').height('60%')
              .zIndex(1)
            Column().backgroundColor(Color.Blue).width('100%').height('100%')
              .zIndex(0)
          }
          .width('40%').aspectRatio(1)
          .padding(10)


        }.width('100%').height('100%')
      }
    }


  }
}