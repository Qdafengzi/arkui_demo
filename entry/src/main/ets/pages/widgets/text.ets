import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct TextWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {

    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller){
        Column(){
          Text('我是第一行文字')
            .baselineOffset(0)
            .fontSize(30)
            .border({ width: 1 })
            .padding(10)
            .width(300)
          Blank().height(10)

          Text('我是Text') {
            Span('我是Span会替换Text内容')
          }
          .padding(10)
          .borderWidth(1)
          Blank().height(10)

          Text() {
            Span('我是Span1，').fontSize(16).fontColor(Color.Grey)
              .decoration({ type: TextDecorationType.LineThrough, color: Color.Red })
            Span('我是Span2').fontColor(Color.Blue).fontSize(16)
              .fontStyle(FontStyle.Italic)
              .decoration({ type: TextDecorationType.Underline, color: Color.Black })
            Span('，我是Span3').fontSize(16).fontColor(Color.Grey)
              .decoration({ type: TextDecorationType.Overline, color: Color.Green })
          }
          .borderWidth(1)
          .padding(10)
          Blank().height(10)

          Text() {
            Span('I am Upper-span').fontSize(12)
              .textCase(TextCase.UpperCase)
          }
          .borderWidth(1)
          .padding(10)
          Blank().height(10)

          Text() {
            Span('I am Upper-span').fontSize(12)
              .textCase(TextCase.UpperCase)
              .onClick(()=>{
                  promptAction.showToast({message:"我是转大写的Span"})
              })

            Span('I am Upper-span').fontSize(12)
              .textCase(TextCase.LowerCase)
              .onClick(()=>{
                promptAction.showToast({message:"我是转小写的Span"})
              })
          }
          Blank().height(10)

          Text('This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content. This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content.')
            .width(250)
            .textOverflow({ overflow: TextOverflow.None })
            .maxLines(1)
            .fontSize(12)
            .border({ width: 1 }).padding(10)
          Text('我是超长文本，超出的部分显示省略号。I am an extra long text, with ellipses displayed for any excess。')
            .width(250)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .fontSize(12)
            .border({ width: 1 }).padding(10)
          Blank().height(10)

          Text('This is the text with the line height set. This is the text with the line height set.')
            .width(300).fontSize(12).border({ width: 1 }).padding(10)
          Text('This is the text with the line height set. This is the text with the line height set.')
            .width(300).fontSize(12).border({ width: 1 }).padding(10)
            .lineHeight(20)
          Blank().height(10)

          Text('This is the text content with baselineOffset 0.')
            .baselineOffset(0)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)
          Text('This is the text content with baselineOffset 30.')
            .baselineOffset(30)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)

          Text('This is the text content with baselineOffset -20.')
            .baselineOffset(-20)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)
          Blank().height(10)

          Text('This is the text content with letterSpacing 0.')
            .letterSpacing(0)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)
          Text('This is the text content with letterSpacing 3.')
            .letterSpacing(3)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)
          Text('This is the text content with letterSpacing -1.')
            .letterSpacing(-1)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)

          Blank().height(10)

          Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为1')
            .width(250)
            .maxLines(1)
            .maxFontSize(30)
            .minFontSize(5)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为2')
            .width(250)
            .maxLines(2)
            .maxFontSize(30)
            .minFontSize(5)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为15，宽度为250,高度为50')
            .width(250)
            .height(50)
            .maxFontSize(30)
            .minFontSize(15)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为15，宽度为250,高度为100')
            .width(250)
            .height(100)
            .maxFontSize(30)
            .minFontSize(15)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Blank().height(10)

          Text("这是一段可复制文本")
            .fontSize(30)
            .copyOption(CopyOptions.InApp)
          Blank().height(10)


          Row() {
            Text("1").fontSize(14).fontColor(Color.Red).margin({ left: 10, right: 10 })
            Text("我是热搜词条1")
              .fontSize(12)
              .fontColor(Color.Blue)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .fontWeight(300)
            Text("爆")
              .margin({ left: 6 })
              .textAlign(TextAlign.Center)
              .fontSize(10)
              .fontColor(Color.White)
              .fontWeight(600)
              .backgroundColor(0x770100)
              .borderRadius(5)
              .width(15)
              .height(14)
          }.width('100%').margin(5)

          Row() {
            Text("2").fontSize(14).fontColor(Color.Red).margin({ left: 10, right: 10 })
            Text("我是热搜词条2 我是热搜词条2 我是热搜词条2 我是热搜词条2 我是热搜词条2")
              .fontSize(12)
              .fontColor(Color.Blue)
              .fontWeight(300)
              .constraintSize({ maxWidth: 200 })
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Text("热")
              .margin({ left: 6 })
              .textAlign(TextAlign.Center)
              .fontSize(10)
              .fontColor(Color.White)
              .fontWeight(600)
              .backgroundColor(0xCC5500)
              .borderRadius(5)
              .width(15)
              .height(14)
          }.width('100%').margin(5)

          Row() {
            Text("3").fontSize(14).fontColor(Color.Orange).margin({ left: 10, right: 10 })
            Text("我是热搜词条3")
              .fontSize(12)
              .fontColor(Color.Blue)
              .fontWeight(300)
              .maxLines(1)
              .constraintSize({ maxWidth: 200 })
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Text("热")
              .margin({ left: 6 })
              .textAlign(TextAlign.Center)
              .fontSize(10)
              .fontColor(Color.White)
              .fontWeight(600)
              .backgroundColor(0xCC5500)
              .borderRadius(5)
              .width(15)
              .height(14)
          }.width('100%').margin(5)

          Row() {
            Text("4").fontSize(14).fontColor(Color.Grey).margin({ left: 10, right: 10 })
            Text("我是热搜词条4 我是热搜词条4 我是热搜词条4 我是热搜词条4 我是热搜词条4")
              .fontSize(12)
              .fontColor(Color.Blue)
              .fontWeight(300)
              .constraintSize({ maxWidth: 200 })
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
          }.width('100%').margin(5)

          Blank().height(100)


        }
        .width('100%')
      }
      .width('100%')



    }
  }
}