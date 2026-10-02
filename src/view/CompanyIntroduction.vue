<template>
    <div id="CompanyIntroduction">
        <div class="banner container-fuild text-center">关于机协</div>
        <div class="container">
            <div class="row CompanyIntroduction-container">
                <div class="col-xs-12 col-sm-12 col-md-6 wow zoomIn">
                    <img class="img-responsive center-block" src="@/assets/img/about_img.png">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <h3>北京航空航天大学机器人协会</h3>
                    <p class=".text-justify">北京航空航天大学机器人协会，简称"北航机协"，英文全称 BUAA Robot Association。在机械工程及自动化学院的指导下，联系同学、服务同学，致力于为热爱科技创新活动的学生提供研究平台。机协的中心任务是"打造一支独立自主的高水平学生创新创业团队"，大力支持社员进行机器人科创的制作开发。2023-2024 年度共有注册会员 304 名，连续五年被评为"五星社团"。</p>
                    <p class=".text-justify">机协的历史可以追溯到 1992 年，钟志科学长与一群爱好科技制作的同学创立了"制造技术协会"——这是机器人协会的前身。90 年代至 10 年代，协会在冯如杯、挑战杯上获奖无数。2013 年，侯涛刚学长将协会改组并正式更名为"机器人协会"，同年创办第一届"启先杯"。梁建宏（中国第一条机器鱼）、王野（九号公司创始人）、陈中元（九号公司执行总裁）等优秀校友均出自机协。我们是一支创业团队，敢为人先的创新精神激励着代代协会人。</p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { WOW } from 'wowjs';
export default {
    name: 'CompanyIntroduction',
    data(){
        return{

        }
    },
    mounted(){
        var wow = new WOW();
        wow.init();
    }
}
</script>
<style scoped>
.banner{
    color: #fff;
    font-size: 30px;
    height: 150px;
    line-height: 150px;
    background-image: url('../assets/img/banner1.png');
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: scroll;
    background-position: center center;
}
.row{
    margin-right: 0;
    margin-left: 0;
}
.CompanyIntroduction-container{
    padding: 100px 0;
    color: #808080;
    transition: all ease 0.5s;
}
.CompanyIntroduction-container>div>p{
    font-size: 14px;
    line-height: 2.5rem;
}
@media screen and (max-width: 997px){
    .CompanyIntroduction-container{
    padding: 10px 0;
    color: #808080;
}
}
</style>

