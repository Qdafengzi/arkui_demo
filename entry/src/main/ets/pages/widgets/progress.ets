import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct ProgressWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {

    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller){
        Column(){
          Blank().height(20)
          Progress({ value: 24, total: 100, type: ProgressType.Linear }) // 创建一个进度总长为100，初始进度值为24的线性进度条
            .style({
              strokeWidth: 20
            })

          Blank().height(20)

          Progress({ value: 20, total: 100, type: ProgressType.Linear }).width(200).height(50)
          Blank().height(20)
          Progress({ value: 20, total: 100, type: ProgressType.Ring }).width(50).height(200)
          Blank().height(20)
          Progress({ value: 20, total: 100, type: ProgressType.Eclipse }).width(50).height(200)
          Blank().height(20)
          Progress({ value: 20, total: 100, type: ProgressType.ScaleRing }).width(50).height(200)
          Blank().height(20)
          Progress({ value: 20, total: 100, type: ProgressType.Capsule }).width(50).height(200)
          Blank().height(20)

          // 从左往右，1号环形进度条，默认前景色为蓝色，默认strokeWidth进度条宽度为2.0vp
          Progress({ value: 40, total: 150, type: ProgressType.Ring }).width(100).height(100)
          Blank().height(20)
          // 从左往右，2号环形进度条
          Progress({ value: 40, total: 150, type: ProgressType.Ring }).width(100).height(100)
            .color(Color.Grey) // 进度条前景色为灰色
            .style({ strokeWidth: 15 }) // 设置strokeWidth进度条宽度为15.0vp
          Blank().height(20)



          Progress({ value: 20, total: 150, type: ProgressType.ScaleRing }).width(100).height(100)
            .backgroundColor(Color.Black)
            .style({ scaleCount: 20, scaleWidth: 5 })    // 设置环形有刻度进度条总刻度数为20，刻度宽度为5vp
          Blank().height(20)
          Progress({ value: 20, total: 150, type: ProgressType.ScaleRing }).width(100).height(100)
            .backgroundColor(Color.Black)
            .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 5 })    // 设置环形有刻度进度条宽度15，总刻度数为20，刻度宽度为5vp
          Blank().height(20)
          Progress({ value: 20, total: 150, type: ProgressType.ScaleRing }).width(100).height(100)
            .backgroundColor(Color.Black)
            .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 3 })
          Blank().height(100)
        }
        .width('100%')
      }
      .width('100%')



    }
  }
}