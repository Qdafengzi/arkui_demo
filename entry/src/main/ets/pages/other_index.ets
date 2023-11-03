@Builder function Item($$: { title: string }) {
  Text($$.title)
    .fontSize(24)
    .fontColor('#ff454444')
    .padding({
      left: 12
    })
    .height(68)
}

@Component
export struct OtherIndex{
  build() {
    List() {
      ListItem() {
        Item({title:"组件状态管理"})
      }.onClick(()=>{
        console.debug("组件状态管理")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"路由跳转携带参数"})
      }.onClick(()=>{
        console.debug("路由跳转携带参数")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"应用状态管理"})
      }.onClick(()=>{
        console.debug("应用状态管理")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"其他状态管理"})
      }.onClick(()=>{
        console.debug("其他状态管理")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"页面和自定义组件生命周期"})
      }.onClick(()=>{
        console.debug("页面和自定义组件生命周期")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"多态样式"})
      }.onClick(()=>{
        console.debug("多态样式")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"传感器"})
      }.onClick(()=>{
        console.debug("传感器")
      }).width('100%').align(Alignment.Start)

      ListItem() {
        Item({title:"后台任务"})
      }.onClick(()=>{
        console.debug("后台任务")
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({title:"Canvas"})
      }.onClick(()=>{
        console.debug("Canvas")
      }).width('100%').align(Alignment.Start)


      ListItem() {
        Item({title:"动画"})
      }.onClick(()=>{
        console.debug("动画")
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