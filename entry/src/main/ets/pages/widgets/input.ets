import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct InputWidget {
  scroller: Scroller = new Scroller()
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {

    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })
      Scroll(this.scroller){
        Column(){
          TextInput()
          Blank().height(10)
          TextArea()
          Blank().height(10)
          TextArea({text:"我是TextArea我是TextArea我是TextArea我是TextArea"}).width(300)
          Blank().height(10)
          TextInput({placeholder:'密码'})
            .type(InputType.Password)
          Blank().height(10)
          TextInput({placeholder:'数字'})
            .type(InputType.Number)
          Blank().height(10)
          TextInput({placeholder:'电话'})
            .type(InputType.PhoneNumber)
          Blank().height(10)
          TextInput({placeholder:'我是提示文本'})
          Blank().height(10)
          TextInput({placeholder:'我是提示文本',text:'我是当前文本内容'})
          Blank().height(10)

          TextInput({placeholder:'我是提示文本',text:'我是当前文本内容'})
            .backgroundColor(Color.Pink)
          Blank().height(10)

          TextInput()
            .onChange((value: string) => {
              console.info(value);
            })
            .onFocus(() => {
              console.info('获取焦点');
            })

          Blank().height(10)

        }
        .width('100%')
      }
      .width('100%')



    }
  }
}