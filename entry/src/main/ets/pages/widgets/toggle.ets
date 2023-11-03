import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';


@Component
@Entry
struct ToggleWidget {
  @State jumpData: JumpData = router.getParams()?.['jumpData']

  build() {
    Column() {
      AppBar({ navigationBack: true, title: `${this.jumpData.title}`, action: "Action" })

      Row() {
        Toggle({ type: ToggleType.Checkbox, isOn: false })
        Toggle({ type: ToggleType.Checkbox, isOn: true })
      }

      Blank().height(30)

      Row() {
        Toggle({ type: ToggleType.Switch, isOn: false })
        Toggle({ type: ToggleType.Switch, isOn: true })
      }

      Blank().height(30)
      Row() {
        Toggle({ type: ToggleType.Button, isOn: false }) {
          Text('status button')
            .fontColor('#182431')
            .fontSize(12)
        }.width(100)

        Toggle({ type: ToggleType.Button, isOn: true }) {
          Text('status button')
            .fontColor('#182431')
            .fontSize(12)
        }.width(100)
      }

      Blank().height(30)

      Row() {
        Toggle({ type: ToggleType.Button, isOn: true }) {
          Text('status button')
            .fontColor('#182431')
            .fontSize(12)
        }.width(100).selectedColor(Color.Pink)

        Toggle({ type: ToggleType.Checkbox, isOn: true })
          .selectedColor(Color.Pink)
        Toggle({ type: ToggleType.Switch, isOn: true })
          .selectedColor(Color.Pink)
      }

    }
  }
}