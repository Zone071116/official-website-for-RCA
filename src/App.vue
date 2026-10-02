<template>
  <div id="app">
    <Header></Header>
    <router-view/>
    <Footer></Footer>
    <GoTop></GoTop>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
/* 娣辫壊涓婚鍏ㄥ眬 */
html, body {
  background: #ffffff !important;
  color: #333 !important;
}
#app {
  background: #ffffff;
  min-height: 100vh;
  color: #333;
}
a { color: #1e73be; }
a:hover { color: #155a94; }
/* 鍘绘帀鎵€鏈夐摼鎺ョ偣鍑婚粦妗?*/
a, button, .btn { outline: none !important; }
a:focus, a:active, button:focus { outline: none !important; }
/* 婊氬姩鏉?*/
::-webkit-scrollbar { width: 8px; }
::-webkit-scrollbar-track { background: #f0f0f0; }
::-webkit-scrollbar-thumb { background: #1e73be; border-radius: 4px; }
::-webkit-scrollbar-thumb:hover { background: #155a94; }
</style>