<template>
  <div id="JobChance">
    <div class="banner container-fuild text-center">加入我们</div>
    <div class="container">
      <div class="JobChance-container wow pulse">
        <h2>招新：三个部门，等你来</h2>
        <p>我们希望你</p>
        <ol>
          <li>对机器人、硬件制作、科技创新有热情，零基础也欢迎；</li>
          <li>愿意花时间参与协会活动，和小伙伴一起把想法变成实物；</li>
          <li>具备团队合作精神，敢于提问、敢于试错。</li>
        </ol>
        <p>你可以选择加入</p>
        <ol>
          <li><strong>项目部</strong>：喜欢动手做东西？这里有单片机、结构设计、PCB、3D 打印，带你从 Arduino 入门走向冯如杯、挑战杯赛场；</li>
          <li><strong>活动部</strong>：擅长策划与执行？一起筹办启先杯、培训、科普讲堂、百团大战，锻炼组织协调与现场把控能力；</li>
          <li><strong>宣传部</strong>：会拍照、会写推文、会剪视频？用镜头记录机协的每一个精彩瞬间，运营协会对外窗口。</li>
        </ol>
        <p>你将收获</p>
        <ol>
          <li>3D 打印机、焊台、激光雕刻机等设备的使用权限；</li>
          <li>单片机、结构设计、PCB 绘制等实用技术指导；</li>
          <li>优先加入冯如杯、挑战杯、全国大学生机器人大赛等项目的机会；</li>
          <li>技术、组织、沟通、信息获取等全方位综合能力的提升。</li>
        </ol>
        <button class="center-block btn btn-warning btn-lg">扫码加入招新群</button>
      </div>
    </div>
  </div>
</template>
<script>
import { WOW } from 'wowjs';
export default {
  name: "JobChance",
  data() {
    return {};
  },
  mounted(){
    var wow = new WOW();
    wow.init();
  }
};
</script>
<style scoped>
.banner {
  color: #fff;
  font-size: 30px;
  height: 150px;
  line-height: 150px;
  background-image: url("../assets/img/banner_2.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
  background-position: center center;
}
.JobChance-container {
  margin: 100px;
  padding: 30px;
  transition: all ease 0.5s;
  border: 1px dashed salmon;
}
.JobChance-container h2{
  color: rgb(255, 102, 19);
  font-weight: bolder;
  text-align: center;
}
.JobChance-container p{
font-size: 20px;
  color: rgb(255, 102, 19);
  font-weight: 700;
}
.JobChance-container ol{
    list-style-type: decimal;
    padding-left: 30px;
}
.JobChance-container ol>li{
    font-size: 14px;
    line-height: 2.7rem;
}
@media screen and (max-width: 997px) {
  .JobChance-container {
    margin: 20px 0;
    padding: 20px;
    border: 1px dashed salmon;
  }
}
</style>

