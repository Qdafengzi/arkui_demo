import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../data/jump_data';

@Builder function Item($$: { title: string }) {
  Text($$.title)
    .fontSize(24)
    .fontColor('#ff454444')
    .padding({
      left: 12
    })
    .height(68)
    .textAlign(TextAlign.Start)
}

@Component
export struct MainWidgetsIndex {
  build() {
    List() {
      ListItem() {
        Item({ title: "Row/Column" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Row/Column"
        router.pushUrl({
          url: 'pages/widgets/row_column',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Stack" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Stack"
        router.pushUrl({
          url: 'pages/widgets/stack',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({ title: "Flex" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Flex"
        router.pushUrl({
          url: 'pages/widgets/flex',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({ title: "RelativeContainer" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "RelativeContainer"
        router.pushUrl({
          url: 'pages/widgets/relative_container',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "GridRow/GridCol" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "GridRow/GridCol"
        router.pushUrl({
          url: 'pages/widgets/grid_row',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({ title: "media query" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "media query"
        router.pushUrl({
          url: 'pages/widgets/media_query',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "List" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "List"
        router.pushUrl({
          url: 'pages/widgets/list',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({ title: "Grid/GridItem" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Grid/GridItem"
        router.pushUrl({
          url: 'pages/widgets/grid',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Swiper" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Swiper"
        router.pushUrl({
          url: 'pages/widgets/swiper',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "button" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "button"
        router.pushUrl({
          url: 'pages/widgets/button',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Radio" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Radio"
        router.pushUrl({
          url: 'pages/widgets/radio',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Toggle" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Toggle"
        router.pushUrl({
          url: 'pages/widgets/toggle',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Progress" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Progress"
        router.pushUrl({
          url: 'pages/widgets/progress',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "TextSpan" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "TextSpan"
        router.pushUrl({
          url: 'pages/widgets/text',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "TextInput/TextArea" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "TextInput/TextArea"
        router.pushUrl({
          url: 'pages/widgets/input',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "CustomDialog" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "CustomDialog"
        router.pushUrl({
          url: 'pages/widgets/dialog',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Video" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Video"
        router.pushUrl({
          url: 'pages/widgets/video',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "XComponent" })
      }.onClick(() => {
        promptAction.showToast({ message: "敬请期待" })
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({ title: "Popup" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Popup"
        router.pushUrl({
          url: 'pages/widgets/popup',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({ title: "Menu" })
      }.onClick(() => {
        var data = new JumpData();
        data.title = "Menu"
        router.pushUrl({
          url: 'pages/widgets/menu',
          params: {
            jumpData: JSON.parse(JSON.stringify(data))
          }
        }, router.RouterMode.Single, err => {

        })
      }).width('100%').align(Alignment.Start)


    }
    .lanes(1) //2列
    .listDirection(Axis.Vertical) //垂直列表
    .backgroundColor('#ffe2e3e2')
    .divider({
      strokeWidth: 1,
      color: '#ff969393',
    })
    .alignListItem(ListItemAlign.Start)
    .width('100%')
    .height('100%')

  }
}