<template>
  <div id="HomePage">
    <!-- 轮播图 -->
    <div id="swiper" class="container-fuild">
      <div class="swiper-container banner-swiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(item,index) in swiperList" :key="index">
            <img class="swiper-lazy" :data-src="item.img" alt="轮播图">
            <div class="swiper-lazy-preloader"></div>
            <div class="swiper-slide-title">
                <h1>{{item.title}}</h1>
                <p>{{item.content}}</p>
            </div>
          </div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>

        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
    </div>
    <!-- 关于机协 -->
    <div id="bigData" class="container-fuild">
      <div class="row bigData-container">
        <div class="col-xs-12 col-sm-12 col-md-6 wow zoomIn">
          <div class="logo-row">
            <img src="@/assets/img/BUAAlogo.png" alt="北航">
            <img src="@/assets/img/logo_black.png" alt="机器人协会">
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
          <h2 class="bigData-title">
            北航机器人协会
            <small>/ BUAA Robot Association</small>
          </h2>
          <p>北京航空航天大学机器人协会，简称"北航机协"，在机械工程及自动化学院的指导下，联系同学、服务同学，致力于为热爱科技创新活动的学生提供研究平台。</p>
          <p>机协的中心任务是打造一支独立自主的高水平学生创新创业团队，大力支持社员进行机器人科创的制作开发。2023-2024 年度共有注册会员 304 名，连续五年被评为"五星社团"。</p>
        </div>
      </div>
    </div>
    <!-- 召唤横幅 -->
    <div id="contactUs" class="container-fuild text-center">
      <div class="container contactUs-container wow slideInUp">
        <h1>在最棒的年华，做最酷的事</h1>
        <h3>敢为人先的创新精神，激励着代代机协人</h3>
        <button class="btn">了解我们</button>
        <div class="contactUs-contactWay">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- 优秀校友 -->
    <div id="customer" class="container-fuild">
      <div class="container customer-container">
        <p class="customer-title text-center">优秀校友</p>
        <div class="alumni-list">
          <div class="alumni-item wow slideInUp" v-for="(item,index) in customerList" :key="index">
            <div class="alumni-photo">
              <img :src="item.logo" alt="校友照片">
            </div>
            <div class="alumni-info">
              <div class="alumni-name">{{item.title}}</div>
              <div class="alumni-content">{{item.content}}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Swiper from "swiper";
import { WOW } from 'wowjs';
export default {
  name: "HomePage",
  data() {
    return {
      swiperList: [
        {
          img: require("@/assets/img/bg1.png"),
          path: "",
          title: '在最棒的年华，做最酷的事',
          content: '北航机器人协会，等你一起探索机器人世界',
        },
        {
          img: require("@/assets/img/bg2.png"),
          path: "",
          title: 'BUAA Robot Association',
          content: '机械工程及自动化学院指导下的学生科创社团',
        },
        {
          img: require("@/assets/img/bg3.png"),
          path: "",
          title: '独立自主的高水平科创团队',
          content: '304名注册会员 · 连续五年五星社团',
        },
        {
          img: require("@/assets/img/bg4.png"),
          path: "",
          title: '敢为人先',
          content: '1992年创立，代代机协人传承创新精神',
        }
      ],
      customerList: [
        {
          logo: require("@/assets/img/logo_hp.png"),
          title:
            "梁建宏  副教授",
          content:
            "创造出中国第一条机器鱼，北航机器人协会早期成员，曾获1999年挑战杯一等奖。"
        },
        {
          logo: require("@/assets/img/logo_kk.png"),
          title:
            "王野  九号公司创始人兼董事长",
          content:
            "机协优秀校友，2002年凭机器蛇作品获冯如杯一等奖，后创立九号公司，成为知名独角兽企业。"
        },
        {
          logo: require("@/assets/img/logo_toyota.png"),
          title:
            "陈中元  九号公司执行总裁",
          content:
            "机协优秀校友，2003年凭防爆机器人作品获冯如杯一等奖，后与校友共同创立九号公司。"
        },
        {
          logo: require("@/assets/img/hou.png"),
          title:
            "侯涛刚  北京交通大学副教授",
          content:
            "2013年改组并创立机器人协会，同年创办第一届启先杯。大一年级即获冯如杯一等奖，24岁成为北交大最年轻副教授。"
        }
      ],
      serverList: [
        {
          logo: require("@/assets/img/tel.png"),
          title: "便利广阔的平台",
          content: "<p>3D打印机、焊台、激光雕刻</p>活动室向会员开放使用"
        },
        {
          logo: require("@/assets/img/computer.png"),
          title: "实用技术指导",
          content: "<p>单片机、结构设计、元器件使用</p>PCB绘制、焊接专项培训"
        },
        {
          logo: require("@/assets/img/qq.png"),
          title: "优先参赛机会",
          content: "<p>冯如杯、挑战杯、全国大学生机器人大赛</p>机创赛、工创赛等高水平赛事"
        },
        {
          logo: require("@/assets/img/skill.png"),
          title: "综合能力提升",
          content: "<p>技术研发、组织协调、沟通表达</p>信息获取、项目管理全方位成长"
        }
      ]
    };
  },
  mounted() {
    /* banner-swiper */
    new Swiper(".banner-swiper", {
      loop: true, // 循环模式选项
      effect: 'fade',
      //自动播放
      autoplay: {
        delay: 7000,
        stopOnLastSlide: false,
        disableOnInteraction: false
      },
      // 如果需要分页器
      pagination: {
        el: ".swiper-pagination",
        clickable: true
      },
      // 如果需要前进后退按钮
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      },
      // 延迟加载
      lazy: {
        loadPrevNext: true
      },
      observer: true, //修改swiper自己或子元素时，自动初始化swiper
      observeParents: true //修改swiper的父元素时，自动初始化swiper
    });
    /* wowjs动画 */
    var wow = new WOW({
      boxClass: 'wow',
      animateClass: 'animated',
      offset: 0,
      mobile: true,
      live: true
    })
    wow.init();
  }
};
</script>
<style scoped>
/* 整体盒子 */
#HomePage {
  width: 100%;
}

/* 轮播图 */
#swiper {
  height: 600px;
  max-width: 74%;
  margin: 20px auto 0;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0,0,0,0.3);
}
#swiper .banner-swiper {
  width: 100%;
  height: 100%;
}

#swiper .banner-swiper .swiper-slide img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center center;
}
#swiper .banner-swiper .swiper-slide{
  position: relative;
}
#swiper .banner-swiper .swiper-slide-title {
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 999999999;
  width: 100%;
  height: 100%;
  color: #fff;
  background: rgba(5, 12, 24, 0.70);
  text-align: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding-left: 0;
}
#swiper .banner-swiper .swiper-slide-title > h1{
  font-size: 68px;
  font-weight: 800;
}

#swiper .banner-swiper .swiper-slide-title > p{
  font-size: 28px;
  margin-top: 20px;
  font-weight: 700;
}
/* 大数据管理系统 */
#bigData {
  padding: 100px;
  transition: all ease 0.6s;
  box-sizing: border-box;
}
#bigData .logo-row {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  gap: 7px;
  padding: 20px 40px 20px 0;
}
#bigData .logo-row img {
  height: 180px;
  width: auto;
}
#bigData .col-md-6:first-child img {

  max-width: 25%;

  float: right;

  margin: 20px 40px 20px 0;

}

#bigData .bigData-title {
  padding-bottom: 10px;
  border-bottom: 1px solid #ddd;
}
#bigData p {
  font-size: 16px;
  color: #333;
  line-height: 2rem;
  max-width: 60%;
}
#bigData .bigData-device {
  margin: 50px 0 20px;
}

/* 您身边的IT专家 */
#contactUs {
  color: #fff;
  height: 400px;
  max-width: 74%;
  margin: 20px auto;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0,0,0,0.3);
  background: url("../assets/img/bg5.png") center center no-repeat;
  background-size: cover;
  position: relative;
  transition: all ease 0.6s;
}

#contactUs::before {
  content: "";
  position: absolute;
  inset: 0;
  background: rgba(5, 12, 24, 0.70);
  z-index: 0;
}
#contactUs .contactUs-container {
  position: relative;
  z-index: 1;
}
#contactUs .contactUs-container h1 {
  font-size: 56px;
  font-weight: 800;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container h3 {
  font-size: 24px;
  font-weight: 500;
  margin-top: 15px;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container {
  padding-top: 50px;
}
#contactUs .contactUs-container button {
  width: 320px;
  height: 64px;
  margin-top: 40px;
  font-size: 24px;
  font-weight: 700;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
  color: #fff;
  background: #1e73be;
  border: 2px solid #1e73be;
  border-radius: 30px;
  color: #fff;
}
#contactUs .contactUs-container button:hover {
  background: #155a94;
  border-color: #155a94;
  color: #fff;
}
#contactUs .contactUs-container .contactUs-contactWay span {
  display: inline-block;
  width: 48px;
  height: 48px;
  margin: 30px;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(1) {
  background: url("../assets/img/weixin.png") 0 0 no-repeat;
  background-size: 100% 100%;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(2) {
  background: url("../assets/img/weibo.png") 0 0 no-repeat;
  background-size: 100% 100%;
}
#contactUs .contactUs-container .contactUs-contactWay span:nth-of-type(3) {
  background: url("../assets/img/twitter.png") 0 0 no-repeat;
  background-size: 100% 100%;
}

/* 客户评价 */
#customer {
  padding: 60px 0;
  background: #f9f9f9;
  background: transparent;
}
#customer .customer-title {
  font-size: 36px;
  color: #333;
  margin: 0 0 50px;
}
.alumni-list {
  max-width: 1000px;
  margin: 0 auto;
}
.alumni-item {
  display: flex;
  align-items: center;
  background: #fff;
  padding: 40px 50px;
  margin-bottom: 25px;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.08);
}
.alumni-photo {
  flex: 0 0 150px;
  margin-right: 40px;
}
.alumni-photo img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  object-position: center top;
  border: 3px solid #1e73be;
  display: block;
}
.alumni-info {
  flex: 1;
}
.alumni-name {
  font-size: 24px;
  font-weight: bold;
  color: #333;
  margin-bottom: 15px;
}
.alumni-content {
  font-size: 17px;
  line-height: 1.9;
  color: #666;
}
/* 媒体查询（手机） */
@media screen and (max-width: 768px) {
  #swiper {
    height: 180px;
  }
  #bigData {
    padding: 30px;
  }
  #bigData .logo-row {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  gap: 7px;
  padding: 20px 40px 20px 0;
}
#bigData .logo-row img {
  height: 180px;
  width: auto;
}
#bigData .col-md-6:first-child img {

  max-width: 25%;

  float: right;

  margin: 20px 40px 20px 0;

}

#bigData .bigData-title {
    font-size: 20px;
  }
  #bigData .bigData-device {
    font-size: 20px;
    margin: 10px 0 10px;
  }
  #contactUs {
    height: 180px;
    transition: all ease 0.6s;
  }
  
#contactUs::before {
  content: "";
  position: absolute;
  inset: 0;
  background: rgba(5, 12, 24, 0.70);
  z-index: 0;
}
#contactUs .contactUs-container {
  position: relative;
  z-index: 1;
}
#contactUs .contactUs-container h1 {
  font-size: 56px;
  font-weight: 800;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container h3 {
  font-size: 24px;
  font-weight: 500;
  margin-top: 15px;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container {
    padding-top: 0;
  }
  #contactUs .contactUs-container h1 {
    font-size: 25px;
  }
  #contactUs .contactUs-container h3 {
    font-size: 18px;
  }
  #contactUs .contactUs-container button {
    width: 200px;
    height: 30px;
    margin-top: 20px;
  }
  #contactUs .contactUs-container .contactUs-contactWay span {
    display: inline-block;
    width: 28px;
    height: 28px;
    margin: 10px;
  }
  #customer {
    padding: 30px 0;
  }
  #customer .customer-title {
    font-size: 22px;
    font-weight: bold;
  }
  .alumni-item {
    flex-direction: column;
    text-align: center;
    padding: 30px 20px;
  }
  .alumni-photo {
    flex: none;
    margin: 0 0 20px 0;
  }
  .alumni-photo img {
    width: 100px;
    height: 180px;
  }
  .alumni-name {
    font-size: 20px;
  }
  .alumni-content {
    font-size: 15px;
  }
  #whyChooseUs {
    padding: 20px 0;
    transition: all ease 0.6s;
  }
  #whyChooseUs .whyChooseUs-title p:nth-of-type(1) {
    font-size: 20px;
    font-weight: 700;
  }
  #whyChooseUs .whyChooseUs-title p:nth-of-type(2) {
    font-size: 12px;
  }
  #whyChooseUs .server-block {
    padding: 50px 0;
    border: 1px solid rgba(255,255,255,0.1);
    border-bottom: 5px solid #ffffff;
  }
  #whyChooseUs .server-block img {
    width: 48px;
    height: 48px;
  }
  #whyChooseUs .server-block > p {
    font-size: 20px;
    margin: 30px 0;
  }
  #whyChooseUs .server-block > div {
    color: #78909c;
  }
}

/* 媒体查询（平板） */
@media screen and (min-width: 768px) and (max-width: 996px) {
  #swiper {
    height: 400px;
  }
  #bigData {
    padding: 60px;
  }
  #bigData .logo-row {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  gap: 7px;
  padding: 20px 40px 20px 0;
}
#bigData .logo-row img {
  height: 180px;
  width: auto;
}
#bigData .col-md-6:first-child img {

  max-width: 25%;

  float: right;

  margin: 20px 40px 20px 0;

}

#bigData .bigData-title {
    font-size: 30px;
  }
  #bigData .bigData-device {
    font-size: 30px;
    margin: 30px 0 15px;
  }
  #contactUs {
    height: 300px;
  }
  
#contactUs::before {
  content: "";
  position: absolute;
  inset: 0;
  background: rgba(5, 12, 24, 0.70);
  z-index: 0;
}
#contactUs .contactUs-container {
  position: relative;
  z-index: 1;
}
#contactUs .contactUs-container h1 {
  font-size: 56px;
  font-weight: 800;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container h3 {
  font-size: 24px;
  font-weight: 500;
  margin-top: 15px;
  font-family: "Microsoft YaHei", "微软雅黑", sans-serif;
}
#contactUs .contactUs-container {
    padding-top: 50px;
  }
  #contactUs .contactUs-container h1 {
    font-size: 30px;
  }
  #contactUs .contactUs-container h3 {
    font-size: 20px;
  }
  #contactUs .contactUs-container button {
    width: 300px;
    height: 50px;
    margin-top: 30px;
  }
  #contactUs .contactUs-container .contactUs-contactWay span {
    display: inline-block;
    width: 32px;
    height: 32px;
    margin: 15px;
  }
  #customer .customer-title {
    font-size: 24px;
  }
  #whyChooseUs {
    padding: 20px 0;
  }
}
</style>

