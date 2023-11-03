import router from '@ohos.router';
import { JumpData } from '../../data/jump_data';
import { AppBar } from '../compose/AppBar';

@Component
@Entry
struct VideoWidgets {
  private controller: VideoController;
  private previewUris: Resource = $r('app.media.ic_other_selected');
  private innerResource: Resource = $rawfile('video_1.mp4');



  @State videoSrc: Resource = $rawfile('video_1.mp4')
  @State previewUri: string = 'common/videoIcon.png'
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  @State sliderStartTime: string = '';
  @State currentTime: number = 0;
  @State durationTime: number = 0;
  @State durationStringTime: string = '';
  controller1: VideoController = new VideoController()

  build() {
    Column() {
      Video({
        src: this.innerResource,
        previewUri: this.previewUris,
        controller: this.controller
      })
        .width('100%')
        .aspectRatio(4 / 3)

        .onUpdate((event) => { //更新事件回调
          console.info("Video update.");
        })
        .onPrepared((event) => { //准备事件回调
          console.info("Video prepared.");
        })
        .onError(() => { //失败事件回调
          console.info("Video error.");
        })


      Blank().height(20)

      Row() {
        Column() {
          Video({
            src: this.videoSrc,
            previewUri: this.previewUri,
            currentProgressRate: this.curRate,
            controller: this.controller1
          }).controls(false).autoPlay(true)
            .onPrepared((event) => {
              this.durationTime = event.duration
            })
            .onUpdate((event) => {
              this.currentTime = event.time
            })
          Row() {
            Text(JSON.stringify(this.currentTime) + 's')
            Slider({
              value: this.currentTime,
              min: 0,
              max: this.durationTime
            })
              .onChange((value: number, mode: SliderChangeMode) => {
                this.controller.setCurrentTime(value);
              }).width("90%")
            Text(JSON.stringify(this.durationTime) + 's')
          }
          .opacity(0.8)
          .width("100%")
        }
        .width('100%')
      }
      .height('40%')

    }
  }
}