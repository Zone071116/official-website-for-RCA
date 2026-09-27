<template>
    <div id="NewsInformation">
        <div class="container">
            <div class="container text-center">
                <h3>新闻动态</h3>
                <p style="color:#b2b2b2">News & Events</p>
            </div>
            <div class="nav container text-center">
                <a href="#" class="active">社团动态</a>
                <a href="#">赛事捷报</a>
            </div>
            <ul class="news-container container-fuild">
                <li v-for="(item,index) in newsList" :key="index" class="wow fadeIn">
                    <div class="content">
                        <p>{{item.title}}</p>
                        <p>{{item.introduce}}</p>
                    </div>
                    <div class="time">
                        <p>{{item.date}}</p>
                        <span>{{item.year}}</span>
                    </div>
                    <div class="circle">
                        <img src="../assets/img/circle.png">
                        <i class="line center-block"></i>
                    </div>
                </li>
            </ul>
            <div class="contaianer-fuild text-center more">
                <i class="glyphicon glyphicon-th"></i>
            </div>
        </div>
    </div>
</template>
<script>
import { WOW } from 'wowjs';
export default {
    name: 'NewsInformation',
    data(){
        return{
            newsList:[
                {
                    id: '001',
                    title: '百团大战招新圆满结束',
                    introduce: '新学期百团大战现场，机协摊位吸引了大量同学前来了解，报名咨询络绎不绝。',
                    date: '09-25',
                    year: '2024'
                },{
                    id: '002',
                    title: '新生见面会顺利举办',
                    introduce: '9月25日晚，机协召开第一次全体会议，向新会员介绍协会历史、部门设置与年度活动安排。',
                    date: '09-25',
                    year: '2024'
                },{
                    id: '003',
                    title: '焊接专项培训开课',
                    introduce: '新学期第一期焊接培训在活动室开讲，学长手把手教学员掌握手工焊接基础。',
                    date: '10-12',
                    year: '2024'
                },{
                    id: '004',
                    title: '"启先杯"机器人竞赛报名启动',
                    introduce: '一年一度的启先杯开始报名，面向全校同学，零基础也可组队参赛。',
                    date: '10-20',
                    year: '2024'
                },{
                    id: '005',
                    title: '我协会在机械设计创新大赛斩获国二',
                    introduce: '仿生赛道上，机协代表队凭借出色作品荣获国家级二等奖及北京市一等奖。',
                    date: '11-15',
                    year: '2023'
                },{
                    id: '006',
                    title: '协会连续五年获评"五星社团"',
                    introduce: '在校社联年度评级中，北航机器人协会再次获评五星社团，实至名归。',
                    date: '12-30',
                    year: '2023'
                }
            ]
        }
    },
    mounted(){
        var wow = new WOW();
        wow.init();
    },
}
</script>
<style scoped>
.nav{
    margin: 20px 0;
}
.nav>a{
    display: inline-block;
    text-decoration: none;
    width: 120px;
    height: 45px;
    line-height: 45px;
    color: #333;
    border: 1px solid #333;
}
.nav>a.active{
    color: #1e73be;
    border-color: #1e73be;
}
.nav>a:hover{
    color: #1e73be;
    border-color: #1e73be;
}
.news-container{
    overflow: hidden;
    margin-bottom: 0;
}
.news-container>li{
    width: 55.6%;
    height: 120px;
    float: left;
    color: #333;
    text-align: right;
    border-left: 1px solid transparent;
    border-right: 1px solid transparent;
}
.news-container>li:hover{
    color: #1e73be;
    border: 1px solid #1e73be;
    cursor: pointer;
}
.news-container>li:nth-of-type(2n){
    float: right;
    text-align: left;
}
.news-container>li>.content{
    width: 60%;
    float: left;
    padding: 20px 0;
}
.news-container>li>.time{
    width: 20%;
    float: left;
    padding: 10px 0;
}
.news-container>li>.time>p{
    font-size: 30px;
    margin: 5px 0;
}
.news-container>li>.circle{
    width: 20%;
    height: 100%;
    float: left;
    position: relative;
}
.news-container>li>.circle>img{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 20px;
    height: 20px;
}
.news-container>li>.circle>i{
    display: block;
    width: 1px;
    height: 100%;
    background: #707070;
}
.news-container>li:nth-of-type(2n)>.content{
    float: right;
}
.news-container>li:nth-of-type(2n)>.time{
    float: right;
}
.news-container>li:nth-of-type(2n)>.circle{
    float: right;
}
.news-container>li:nth-of-type(1)>.circle>i{
    height: 50%;
    position: absolute;
    top: 50%;
    left: 50%;
}
.more{
    font-size: 25px;
    color: #707070;
}
.more>i{
    cursor: pointer;
}
@media screen and (max-width: 767px){
    .news-container>li{
        width: 100%;
    }
    .news-container>li>.content{
        width: 70%;
        text-align: left;
        float: right;
    }
    .news-container>li>.time{
        width: 30%;
        text-align: left;
        float: right;
    }
    .news-container>li>.circle{
        display: none;
    }
}
</style>

