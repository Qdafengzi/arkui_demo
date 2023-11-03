import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct PopupWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  @State handlePopup: boolean = false
  @State customPopup: boolean = false


  // popup构造器定义弹框内容
  @Builder popupBuilder() {
    Row({ space: 2 }) {
      Image($r("app.media.icon")).width(24).height(24).margin({ left: 5 })
      Text('This is Custom Popup').fontSize(15)
    }.width(200).height(50).padding(5)
  }
  // popup构造器定义弹框内容
  @Builder popupBuilder1() {
    Row({ space: 2 }) {
      Image('/images/shengWhite.png').width(30).objectFit(ImageFit.Contain)
      Column(){
        Text('控制人生').fontSize(14).fontWeight(900).fontColor(Color.White).width('100%')
        Text('想要跟唱时，数千万歌曲任你选择，人声随心调整。').fontSize(12).fontColor('#ffeeeeee').width('100%')
      }
    }.width(230).height(80).padding(5)
  }

  build() {

    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller) {
        Column() {

          Button('PopupOptions')
            .onClick(() => {
              this.handlePopup = !this.handlePopup
            })
            .bindPopup(this.handlePopup, {
              message: 'This is a popup with PopupOptions',
            })

          Blank().height(20)
          Button('PopupOptions').margin({ top: 10 })
            .onClick(() => {
              this.handlePopup = !this.handlePopup
            })
            .bindPopup(this.handlePopup, {
              message: 'This is a popup with PopupOptions',
              primaryButton: {
                value: 'Confirm',
                action: () => {
                  this.handlePopup = !this.handlePopup
                  console.info('confirm Button click')
                }
              },
              secondaryButton: {
                value: 'Cancel',
                action: () => {
                  this.handlePopup = !this.handlePopup
                }
              },
            })


          Blank().height(10)
          Button('CustomPopupOptions')
            // .position({ x: 100, y: 200 })
            .onClick(() => {
              this.customPopup = !this.customPopup
            })
            .bindPopup(this.customPopup, {
              builder: this.popupBuilder, // 气泡的内容
              placement: Placement.Bottom, // 气泡的弹出位置
              popupColor: Color.Pink // 气泡的背景色
            })


          Row() {
            Text('我要K歌')
            Image($r('app.media.ic_other_selected')).width(35).objectFit(ImageFit.Contain)
              .onClick(() => {
                this.customPopup = !this.customPopup
              })
              .bindPopup(this.customPopup, {
                builder: this.popupBuilder1,
              })
          }
          .margin(20)
          .height('100%')

        }
        .width('100%')
      }
      .width('100%')

    }
  }
}