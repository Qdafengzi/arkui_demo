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
struct GridWidget {
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

      Grid() {
        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .rowStart(1).rowEnd(2)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)


        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)

        GridItem(){
          Text("1")
        }.backgroundColor(Color.Yellow)
        .borderWidth(2).borderColor(Color.Green)
        .columnStart(3)
        .columnEnd(4)

      }
      .layoutDirection(GridDirection.Column)
      .rowsTemplate('1fr 1fr 1fr')//3行
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')//5列
      .height(300)
      .backgroundColor(Color.Gray)

     Column().height(10)

      Grid() {
        ForEach(this.list, (item: Model) => {
          GridItem() {
            Text(`${item.value}`).fontSize(20).fontColor(Color.Blue)
          }
        })
      }
      .width('100%')
      .layoutDirection(GridDirection.Row)
      .maxCount(3)
      .columnsTemplate('1fr 1fr 1fr')
      .height(400)
      .backgroundColor(Color.Gray)

      // .rowsTemplate('1fr 1fr 2fr')
      // .rowsTemplate('1fr 1fr 2fr')

    }
  }
}