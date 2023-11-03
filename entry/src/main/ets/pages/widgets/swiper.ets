import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct SwiperWidget {
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  private swiperControllerOne: SwiperController = new SwiperController()
  private swiperController: SwiperController = new SwiperController()

  next() {
    this.swiperControllerOne.showNext()
  }

  pre() {
    this.swiperControllerOne.showPrevious()
  }

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Swiper(this.swiperControllerOne) {
        Text("0")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Gray)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("1")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("2")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
        Text("3")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
      }
      .loop(false)
      .height(200)

      Row() {
        Button() {
          Text("Next").margin(20).fontColor(Color.White)
        }.onClick(() => {
          this.next()
        }).margin(10)

        Button() {
          Text("Pre").margin(20).fontColor(Color.White)
        }.onClick(() => {
          this.pre()
        }).margin(10)

      }.width('100%')
      .height(100)
      .margin({ top: 10, bottom: 10 })
      .justifyContent(FlexAlign.Center)

      Divider()

      Swiper(this.swiperController) {
        Text("0")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Gray)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("1")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("2")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
        Text("3")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
      }
      .loop(true)
      .autoPlay(true)
      .interval(2000)
      .height(200)

      Divider()

      Text("展示多个")
      Swiper(this.swiperController) {
        Text("0")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Gray)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("1")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("2")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
        Text("3")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
        Text("4")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("5")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("6")
          .width('90%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
      }
      .loop(true)
      .autoPlay(true)
      .interval(2000)
      .displayCount(2)
      .height(200)

    }
  }
}