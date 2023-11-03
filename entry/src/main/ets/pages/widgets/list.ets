import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


class Model {
  public value: string

  constructor(va: string) {
    this.value = va
  }
}

@Component
@Entry
struct ListWidget {
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  @State list: Model[] = [new Model("-1"), new Model("-2")]

  add() {
    for (let i = 0; i < 20; i++) {
      this.list.push(new Model(`${i}`))
    }
  }

  clear() {
    this.list = []
  }

  remove() {
    this.list.pop()
  }

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Row() {
        Button() {
          Text("Add").padding(10)
        }.onClick(() => {
          this.add()
        })

        Button() {
          Text("Clear").padding(10)
        }.onClick(() => {
          this.clear()
        })

        Button() {
          Text("pop").padding(10)
        }.onClick(() => {
          this.remove()
        })
      }

      List({
        space: 10
      }) {
        ForEach(this.list, (item: Model) => {
          ListItem() {
            Column() {
              Row() {
                Image($r('app.media.ic_other_selected'))
                  .width(40)
                  .height(40)
                  .margin(10)
                Text(`${item.value}`).fontSize(20).fontColor(Color.White)
              }
              .width('100%')
              .justifyContent(FlexAlign.Start)

              Divider()
            }
          }.backgroundColor(Color.Blue)
        })
      }
      .width('100%')
    }
  }
}