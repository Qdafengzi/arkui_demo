import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@CustomDialog
struct CustomDialogExample {
  controller: CustomDialogController
  cancel: () => void
  confirm: () => void

  build() {
    Column() {
      Text('我是内容').fontSize(30).margin({ top: 10, bottom: 10 }).alignSelf(ItemAlign.Center)

      Blank().height(20)
      Text('我是内容').fontSize(20).margin({ top: 10, bottom: 10 })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('cancel')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor('#ff6429e9').fontColor(Color.White)
        Button('confirm')
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor('#ff6429e9').fontColor(Color.White)
      }.margin({ bottom: 10 })
    }
    .backgroundColor('#ff2feea2')

    .borderRadius(50)
  }
}

@Component
@Entry
struct DialogWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      cancel: this.onCancel,
      confirm: this.onAccept,
    }),
    alignment: DialogAlignment.Default, // 可设置dialog的对齐方式，设定显示在底部或中间等，默认为底部显示
  })

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.info('Callback when the second button is clicked')
  }

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Button('click me')
        .onClick(() => {
          this.dialogController.open()
        })
    }
  }
}