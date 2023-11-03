import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct RadioWidget {
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })

      Radio({ value: 'Radio1', group: 'radioGroup' })
        .checked(false)
        .onChange((isChecked: boolean) => {
          if(isChecked) {
            //需要执行的操作
            console.log("1 isChecked")
            // 切换为响铃模式
            promptAction.showToast({ message: '1 isChecked' })
          }
        })
      Blank().height(10)
      Radio({ value: 'Radio2', group: 'radioGroup' })
        .checked(true)
        .onChange((isChecked: boolean) => {
          if(isChecked) {
            //需要执行的操作
            console.log("2 isChecked")
            promptAction.showToast({ message: '2 isChecked' })
          }
        })
      Blank().height(10)

      Radio({ value: 'Radio3', group: 'radioGroup' })
        .checked(false)
        .onChange((isChecked: boolean) => {
          if(isChecked) {
            //需要执行的操作
            console.log("3 isChecked")
            promptAction.showToast({ message: '3 isChecked' })
          }
        })

        // .backgroundColor(Color.Red)

      Blank().height(10)


    }
  }
}