import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct ButtonWidget {
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })

      Button('Ok', { type: ButtonType.Normal, stateEffect: true })
        .borderRadius(8)
        .backgroundColor(0x317aff)
        .width(90)
        .height(40)
        .onClick(() => {
          console.log("Ok")
        })

      Blank().height(10)

      Button({ type: ButtonType.Normal, stateEffect: true }) {
        Row() {
          Image($r('app.media.ic_other_selected')).width(20).height(40).margin({ left: 12 })
          Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
        }.alignItems(VerticalAlign.Center)
      }
      .borderRadius(8)
      .backgroundColor(0x317aff)
      .width(90)
      .height(40)
      .onClick(() => {
        console.log("带有内容的按钮")
      })

      Blank().height(10)

      Button('Capsule', { type: ButtonType.Capsule, stateEffect: false })
        .backgroundColor(0x317aff)
        .width(90)
        .height(40)

      Blank().height(10)

      Button('Circle', { type: ButtonType.Circle, stateEffect: false })
        .backgroundColor(0x317aff)
        .width(120)
        .height(100)

      Blank().height(10)

      Button('Normal', { type: ButtonType.Normal, stateEffect: false })
        .backgroundColor(0x317aff)
        .borderRadius(8)
        .width(90)
        .height(40)
        .onClick(() => {
          console.info('Button onClick')
        })

      Blank().height(10)
    }
  }
}