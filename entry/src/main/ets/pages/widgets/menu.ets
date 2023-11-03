import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct MenuWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  @State handlePopup: boolean = false
  @State customPopup: boolean = false
  @State select: boolean = true
  private iconStr: ResourceStr = $r("app.media.ic_widget_un_selected")
  private iconStr2: ResourceStr = $r("app.media.ic_widget_selected")

  @Builder
  SubMenu() {
    Menu() {
      MenuItem({ content: "复制", labelInfo: "Ctrl+C" })
      MenuItem({ content: "粘贴", labelInfo: "Ctrl+V" })
    }
  }

  @Builder
  MyMenu() {
    Menu() {
      MenuItem({ startIcon: $r("app.media.icon"), content: "菜单选项" })
      MenuItem({ startIcon: $r("app.media.icon"), content: "菜单选项" }).enabled(false)
      MenuItem({
        startIcon: this.iconStr,
        content: "菜单选项",
        endIcon: $r("app.media.ic_project_selected"),
        // 当builder参数进行配置时，表示与menuItem项绑定了子菜单。鼠标hover在该菜单项时，会显示子菜单。
        builder: this.SubMenu.bind(this),
      })
      MenuItemGroup({ header: '小标题' }) {
        MenuItem({ content: "菜单选项" })
          .selectIcon(true)
          .selected(this.select)
          .onChange((selected) => {
            console.info("menuItem select" + selected);
            this.iconStr2 = $r("app.media.icon");
          })
        MenuItem({
          startIcon: $r("app.media.ic_project_un_selected"),
          content: "菜单选项",
          endIcon: $r("app.media.app_icon"),
          builder: this.SubMenu.bind(this)
        })
      }

      MenuItem({
        startIcon: this.iconStr2,
        content: "菜单选项",
        endIcon: $r("app.media.app_icon")
      })
    }
  }

  build() {

    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller) {
        Column() {
          Button('click for Menu')
            .bindMenu([
              {
                value: 'Menu1',
                action: () => {
                  console.info('handle Menu1 select')
                }
              }
            ])

          Blank().height(20)

          Button('click for Menu')
            .bindMenu(this.MyMenu)

        }
        .width('100%')
      }
      .width('100%')

    }
  }
}