<template>
  <div id="ServiceDetail">
    <div class="banner container-fuild text-center">社团活动</div>
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3" id="myScrollspy">
          <ul class="nav nav-tabs nav-stacked center-block" id="myNav">
            <p>品牌活动</p>
            <li
              :class="item.id==id?'active':''"
              v-for="(item,index) in serviceNavList"
              :key="index"
            >
              <a :href="'#'+item.id">{{item.title}}</a>
            </li>
          </ul>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 content  wow zoomIn">
          <div class="content-block" v-for="(item,index) in serviceContentList" :key="index">
            <h2 :id="item.id">
              {{item.title}}
              <small>/ {{item.eng_title}}</small>
            </h2>
            <div v-html="item.content"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { WOW } from "wowjs";
export default {
  name: "ServiceDetail",
  data() {
    return {
      id: "section-1",
      serviceNavList: [
        {
          id: "section-1",
          title: '"启先杯"机器人竞赛'
        },
        {
          id: "section-2",
          title: "机器人培训"
        },
        {
          id: "section-3",
          title: "科普讲堂"
        },
        {
          id: "section-4",
          title: "活动室开放日"
        }
      ],
      serviceContentList: [
        {
          id: "section-1",
          title: '"启先杯"机器人竞赛',
          eng_title: "Qixian Cup",
          content:
            "<h3>协会品牌赛事</h3><p>启先杯创办于2013年，由侯涛刚学长发起，是北航机协传承至今的品牌机器人赛事。比赛面向全校同学，鼓励零基础同学组队报名，在短时间内完成一台机器人的设计与制作。</p><h3>你将收获</h3><p>从想法到实物的完整项目体验，与志同道合的小伙伴并肩作战，优秀作品更有机会被推荐参加冯如杯、挑战杯等更高等级赛事。</p>"
        },
        {
          id: "section-2",
          title: "机器人培训",
          eng_title: "Training",
          content:
            "<h3>从零开始，带你入门</h3><p>协会定期开设单片机、结构设计、焊接、PCB 绘制等系列培训课程，由有经验的学长学姐主讲，零基础也能轻松上手。</p><h3>培训内容</h3><p>Arduino / ESP32 / STM32 入门，传感器与电机驱动，机械结构设计与受力分析，3D 打印与激光雕刻实操。</p>"
        },
        {
          id: "section-3",
          title: "科普讲堂",
          eng_title: "Lectures",
          content:
            "<h3>博雅师长与校友讲座</h3><p>邀请校内外专家、毕业校友走进协会，分享机器人前沿技术与创业故事。从机器鱼到四足机器人，从实验室到九号公司，带你看见机器人行业的更多可能。</p><h3>往期主题</h3><p>仿生机器人、共轴反桨无人机、自主学习四足机器人、跨海空介质飞行器……一代代机协人的优秀作品背后，都有一个关于热爱与坚持的故事。</p>"
        },
        {
          id: "section-4",
          title: "活动室开放日",
          eng_title: "Open Day",
          content:
            "<h3>属于机协人的创造空间</h3><p>协会设有独立活动室，配备 3D 打印机、焊台、激光雕刻机等设备，定期向会员开放。无论是项目制作还是自己动手做个小发明，这里都能满足你。</p><h3>开放内容</h3><p>设备使用指导、焊接专项练习、「小制作」工作坊、灵探巧创实践队招募……来活动室，把你的脑洞变成现实。</p>"
        }
      ]
    };
  },
  mounted() {
    this.id = this.$route.params.id;
    var top = document.getElementById(this.id).offsetTop;
    $(window).scrollTop(top + 300);
    $("#myNav").affix({
      offset: {
        top: 300
      }
    });
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
ul.nav-tabs {
  width: 200px;
  margin-top: 40px;
  border-radius: 4px;
  background: #fff;
  z-index: 99999;
  border: 1px solid #474747;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
}
ul.nav-tabs li {
  text-align: center;
  margin: 0;
  border-top: 1px solid #474747;
}
ul.nav-tabs p {
  color: #fff;
  font-size: 18px;
  font-weight: bold;
  text-align: center;
  background: #474747;
  margin: 0;
  padding: 10px 0;
}
ul.nav-tabs li:first-child {
  border-top: none;
}
ul.nav-tabs li a {
  margin: 0;
  padding: 8px 16px;
  border-radius: 0;
}
ul.nav-tabs li.active a,
ul.nav-tabs li.active a:hover {
  color: #fff;
  background: #474747;
  border: 1px solid #474747;
}
ul.nav-tabs li:first-child a {
  border-radius: 4px 4px 0 0;
}
ul.nav-tabs li:last-child a {
  border-radius: 0 0 4px 4px;
}
ul.nav-tabs.affix {
  top: 30px;
}
.content-block {
  margin: 50px 0;
}
.content-block > h2 {
  padding: 20px 0;
  border-bottom: 1px solid #ccc;
}
</style>
