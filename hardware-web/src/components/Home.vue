<template>
  <el-container>
       <el-aside width="1000px">
           <el-form :rules="LoginRules" :label-position="labelPosition" label-width="80px"  class="loginForm" 
                   >
               
               
               <el-row> <el-button type="primary" round style="width: 200px;margin-left: 60px;background-color: yellow;border: yellow;color: black" @click="submit">开始模拟数据</el-button></el-row>
           </el-form>
       </el-aside>
   </el-container>
</template>

<script>
import axios from 'axios';
 export default {
  
   name: 'HomePage',
   methods:{
    submit(){
      axios.get("/business/begin").then(alert("开始模拟"));
    }
   }
 }
</script>

<style scoped>

   .loginForm{
       box-shadow: 0 2px 25px rgba(0, 0, 0, .12), 0 0 6px rgba(0, 0, 0, .04);
       border-radius: 15px;
       background-clip: padding-box;
       margin: 180px auto;
       width: 400px;
       border: 1px solid #eaeaea;
       padding: 35px;
       background-color: white;
       margin-right: 50px;

   }
</style>