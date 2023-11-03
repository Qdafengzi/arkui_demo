import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';

@Component
@Entry
struct FlexWidgets {
  @State jumpData: JumpData = router.getParams()?.['jumpData']
  scroller: Scroller = new Scroller()

  build() {
    Column(){
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller){
        Column() {
          Flex({direction:FlexDirection.Column}){
            Column().backgroundColor(Color.Blue).width('20%').height('100%')
            Column().backgroundColor(Color.Yellow).width('50%').height('100%')
            Column().backgroundColor(Color.Red).width('30%').height('100%')
          }
          .width('50%').aspectRatio(1)
          .padding(10)
          .backgroundColor(Color.Gray)
          .margin({top:10})

          Text("wrap: FlexWrap.NoWrap").margin({top:10})
          Flex({ wrap: FlexWrap.NoWrap }) {
            Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('50%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("wrap: FlexWrap.Wrap").margin({top:10})
          Flex({ wrap: FlexWrap.Wrap }) {
            Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('50%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("justifyContent:FlexAlign.Start").margin({top:10})
          Flex({ justifyContent:FlexAlign.Start }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("justifyContent:FlexAlign.End").margin({top:10})
          Flex({ justifyContent:FlexAlign.End }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("justifyContent:FlexAlign.Center").margin({top:10})
          Flex({ justifyContent:FlexAlign.Center }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("justifyContent:FlexAlign.SpaceBetween").margin({top:10})
          Flex({ justifyContent:FlexAlign.SpaceBetween }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("justifyContent:FlexAlign.SpaceAround").margin({top:10})
          Flex({ justifyContent:FlexAlign.SpaceAround }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("justifyContent:FlexAlign.SpaceEvenly").margin({top:10})
          Flex({ justifyContent:FlexAlign.SpaceEvenly }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("alignItems: ItemAlign.Auto").margin({top:10})
          Flex({ alignItems: ItemAlign.Auto }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("alignItems: ItemAlign.Start").margin({top:10})
          Flex({ alignItems: ItemAlign.Start }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("alignItems: ItemAlign.End").margin({top:10})
          Flex({ alignItems: ItemAlign.End }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("alignItems: ItemAlign.Center").margin({top:10})
          Flex({ alignItems: ItemAlign.Center }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("alignItems: ItemAlign.Stretch").margin({top:10})
          Flex({ alignItems: ItemAlign.Stretch }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("alignSelf(ItemAlign.End)").margin({top:10})
          Flex({ alignItems: ItemAlign.Center }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3).alignSelf(ItemAlign.End)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(0xAFEEEE)
          .margin({top:10})


          Text("flexBasis").margin({top:10})
          Flex() {
            Text('flexBasis("auto")')
              .flexBasis('auto') // 未设置width以及flexBasis值为auto，内容自身宽松
              .height(100)
              .backgroundColor(0xF5DEB3)
            Text('flexBasis("auto")' + ' width("40%")')
              .width('40%')
              .flexBasis('auto') //设置width以及flexBasis值auto，使用width的值
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('flexBasis(100)') // 未设置width以及flexBasis值为100，宽度为100vp
              .fontSize(15)
              .flexBasis(100)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('flexBasis(100)')
              .fontSize(15)
              .flexBasis(100)
              .width(200) // flexBasis值为100，覆盖width的设置值，宽度为100vp
              .height(100)
              .backgroundColor(0xD2B48C)
          }.width('90%').height(120).padding(10).backgroundColor(0xAFEEEE)
          .margin({top:10})

          /**
           * 这种很少使用吧
           *
           * 父容器宽度400vp，三个子组件原始宽度为100vp，总和300vp，剩余空间100vp根据flexGrow值的占比分配给子组件，未设置flexGrow的子组件不参与“瓜分”。
           第一个元素以及第二个元素以2:3分配剩下的100vp。第一个元素为100vp+100vp*2/5=140vp，第二个元素为100vp+100vp*3/5=160vp。
           */
          Text("flexGrow").margin({top:10})
          Flex() {
            Text('flexGrow(1)')
              .flexGrow(1)
              .width(100)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('flexGrow(3)')
              .flexGrow(3)
              .width(100)
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('no flexGrow')
              .width(100)
              .height(100)
              .backgroundColor(0xF5DEB3)
          }.width(400).height(120).padding(10).backgroundColor(0xAFEEEE)
          .margin({top:10})

          Text("flexShrink").margin({top:10})
          Flex({ direction: FlexDirection.Row }) {
            Text('flexShrink(3)')
              .fontSize(15)
              .flexShrink(3)
              .width(200)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('no flexShrink')
              .width(200)
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('flexShrink(1)')
              .flexShrink(1)
              .width(200)
              .height(100)
              .backgroundColor(0xF5DEB3)
          }.width(400).height(120).padding(10).backgroundColor(0xAFEEEE)
          .margin({top:10})




        }.width('100%').margin({bottom:80})
      }
      .height('100%')
      .width('100%')

      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .scrollBarColor(Color.Gray)
      .scrollBarWidth(10)
      .onScroll((xOffset: number, yOffset: number) => {
        console.info(xOffset + ' ' + yOffset)
      })
      .onScrollEdge((side: Edge) => {
        console.info('To the edge')
      })
      .onScrollEdge((side) => {

      })
    }


  }
}