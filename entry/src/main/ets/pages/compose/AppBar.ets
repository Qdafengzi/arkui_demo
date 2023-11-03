import router from '@ohos.router';

@Entry
@Component
export struct AppBar {
  @State title: string = 'Title';
  @State action: string = 'Action';
  @State navigationBack: boolean = true;
  build() {
    Row() {
      Row() {
        if (this.navigationBack === true) {
          Image($r('app.media.ic_back')).onClick(() => {
            router.back()
          }).width(36).height(36)
            .margin({ right: 10 })
        }
        Text(this.title).fontWeight(FontWeight.Medium).fontSize(16).fontColor('#ff333333')
      }

      // Blank()
      Text(this.action).fontWeight(FontWeight.Normal).fontSize(14).fontColor('#ff333333')
    }
    .height(56)
    .width('100%')
    .backgroundColor('#ffe7e6e6')
    .padding({ left: 10, right: 10 })
    .justifyContent(FlexAlign.SpaceBetween)
  }
}