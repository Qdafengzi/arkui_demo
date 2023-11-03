import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';
@Component
@Entry
struct RowAndColumn {

  @State jumpData: JumpData = router.getParams()?.['jumpData']


  scroller: Scroller = new Scroller()
  build() {
    Column(){
      AppBar({navigationBack:true,title:`${this.jumpData.title}`,action:"Action"})
      Scroll(this.scroller){
        Column({ space: 10 }) {
          //每个条目之间的间距
          Text('交叉轴：HorizontalAlign.End')
          Column({space: 10 }){
            Text('space: 10').width('100%').fontSize(15).fontColor(Color.White).backgroundColor(Color.Blue)
            Row().width('100%').height(50).backgroundColor(0xF5DEB3)
            Row().width('70%').height(50).backgroundColor(0xD2B48C)
            Row().width('30%').height(50).backgroundColor(0xF5DEB3)
          }.alignItems(HorizontalAlign.End)

          Divider()

          Text('交叉轴：VerticalAlign.Bottom')
          Row({space:20}){
            Text('space: 20').fontSize(15).fontColor(Color.Gray)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
            Row().width('10%').height(100).backgroundColor(0xD2B48C)
            Row().width('10%').height(50).backgroundColor(0xF5DEB3)
          }.alignItems(VerticalAlign.Bottom)

          Divider()

          Text('交叉轴 alignSelf：ItemAlign.Start')//优先级高于 alignItems
          Row({space:20}){
            Text('space: 20').fontSize(15).fontColor(Color.Gray)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
            Row().width('10%').height(100).backgroundColor(0xD2B48C)
            Row().width('10%').height(50).backgroundColor(0xF5DEB3).alignSelf(ItemAlign.Start)
          }.alignItems(VerticalAlign.Bottom)
          Divider()


          Text("自适应 Blank")
          Row(){
            Text("自适应 开始").backgroundColor('#ffcd3e3e').fontColor(Color.White)
            Blank().backgroundColor('#ff44ae1e')//自适应
            Text("自适应 结束").backgroundColor('#ff8224d4').fontColor(Color.White)
          }.width('100%')

          Divider()

          Text('权重')
          Row({space:20}){
            Row().margin({left:10,right:10}).layoutWeight(1).height(150).backgroundColor(0xF5DEB3)
            Row().margin({left:10,right:10}).layoutWeight(1).height(150).backgroundColor(0xD2B48C)
            Row().margin({left:10,right:10}).layoutWeight(1).height(150).backgroundColor(0xF5DEB3).alignSelf(ItemAlign.Start)
          }.alignItems(VerticalAlign.Bottom)
          .margin({bottom:20})
          Divider()


        }
        .width('100%')
        // .height('100%')//设置大小后 不能滑动
        .backgroundColor('#ffffffff')
        .alignItems(HorizontalAlign.Center)//交叉轴
        .justifyContent(FlexAlign.Center)//主轴
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
    }.width('100%').height('100%')


  }
}