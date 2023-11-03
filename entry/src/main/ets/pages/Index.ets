import log from '@ohos.hilog';
import { OtherIndex } from './other_index';
import { ProjectIndex } from './project_index';
import { MainWidgetsIndex } from './widget_index';


@Entry
@Component
struct Index {
  private list: Array<string> = ["组件", "工程", "其他"];

  private controller: TabsController = new TabsController()
  @State SelectPos: number = 0;

  public WidgetsClick() {
    log.info(0x0000, 'testTag', '%{public}s', 'WidgetsClick');
    this.SelectPos = 0;
    this.controller.changeIndex(0)
  }

  public ProjectClick() {
    this.SelectPos = 1;
    this.controller.changeIndex(1)
  }

  public OtherClick() {
    this.SelectPos = 2;
    this.controller.changeIndex(2)
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      Tabs({ controller: this.controller }) {
        TabContent() {
          MainWidgetsIndex()
        }.tabBar('首页')

        TabContent() {
          ProjectIndex()
        }.tabBar('首页')

        TabContent() {
          OtherIndex()
        }.tabBar('首页')
      }
      .scrollable(false)
      .barHeight(0)
      .animationDuration(0)

      Row() {
        Column() {
          Image((this.SelectPos == 0 ? $r("app.media.ic_widget_selected") : $r("app.media.ic_widget_un_selected")))
            .width(32).height(32)

          Text(this.list[0])
            .size({ width: '100%'}).textAlign(TextAlign.Center)
            .fontSize(20)
            .fontColor((this.SelectPos == 0 ? 0xFF1296db : 0xffbfbfbf))
        }
        .layoutWeight(1)
        .backgroundColor(Color.White)
        .height("100%")
        .onClick(this.WidgetsClick.bind(this))

        Column() {
          Image((this.SelectPos == 1 ? $r('app.media.ic_project_selected') : $r('app.media.ic_project_un_selected')))
            .width(32).height(32)

          Text(this.list[1])
            .size({ width: '100%'}).textAlign(TextAlign.Center)
            .fontSize(20)
            .fontColor((this.SelectPos == 1 ? 0xFF1296db : 0xffbfbfbf))
        }
        .layoutWeight(1)
        .backgroundColor(Color.White)
        .height("100%")
        .onClick(this.ProjectClick.bind(this))

        Column() {
          Image((this.SelectPos == 2 ? $r('app.media.ic_other_selected') : $r('app.media.ic_other_un_selected')))
            .width(32).height(32)

          Text(this.list[2])
            .size({ width: '100%'})
            .textAlign(TextAlign.Center)
            .fontSize(20)
            .fontColor((this.SelectPos == 2 ? 0xFF1296db : 0xffbfbfbf))

        }
        .layoutWeight(1)
        .backgroundColor(Color.White)
        .height("100%")
        .onClick(0===0 ? this.OtherClick.bind(this) : this.OtherClick.bind(this))
      }.alignItems(VerticalAlign.Bottom).width('100%')
      .height(80)
      .margin({ top: 10, right: 0, bottom: 10, left: 0 })
    }
    .width('100%')
    .height('100%')
  }
}
