import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';

@Component
@Entry
struct GridRowAndCol {
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  scroller: Scroller = new Scroller()
  @State bgColors: Color[] = [Color.Red, Color.Orange, Color.Yellow, Color.Green, Color.Pink, Color.Grey, Color.Blue, Color.Brown];
  @State currentBp: string = 'unknown';

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })

      Row() {
        GridRow({gutter:10, columns: 4 }) {
          ForEach(this.bgColors, (item, index) => {
            GridCol() {
              Row() {
                Text(`${index + 1}`)
              }.width('100%').height('50')
            }.backgroundColor(item)
          })
        }
        .width('100%').height('100%')
        .onBreakpointChange((breakpoint) => {
          this.currentBp = breakpoint
        })
      }
      .height(160)
      .border({ color: Color.Blue, width: 2 })
      .width('90%')

      Row() {
        GridRow({ columns: 8 }) {
          ForEach(this.bgColors, (item, index) => {
            GridCol() {
              Row() {
                Text(`${index + 1}`)
              }.width('100%').height('50')
            }.backgroundColor(item)
          })
        }
        .width('100%').height('100%')
        .onBreakpointChange((breakpoint) => {
          this.currentBp = breakpoint
        })
      }
      .height(160)
      .border({ color: Color.Blue, width: 2 })
      .width('90%')

      Row() {
        GridRow({gutter: { x:10,y:20} , columns: 4 }) {
          ForEach(this.bgColors, (item, index) => {
            GridCol() {
              Row() {
                Text(`${index + 1}`)
              }.width('100%').height('50')
            }.backgroundColor(item)
          })
        }
        .width('100%').height('100%')
        .onBreakpointChange((breakpoint) => {
          this.currentBp = breakpoint
        })
      }
      .height(160)
      .border({ color: Color.Blue, width: 2 })
      .width('90%')

    }
  }
}