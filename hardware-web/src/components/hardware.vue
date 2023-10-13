<template>
   <el-container>
        <!-- <el-aside width="600px">
            <el-form :rules="LoginRules" :label-position="labelPosition" label-width="80px"  class="loginForm" 
                    >
                
                
                <el-row> <el-button type="primary" round style="width: 00px;margin-left: 60px;background-color: yellow;border: yellow;color: black" @click="submitLogin">开始模拟数据</el-button></el-row>
            </el-form>
        </el-aside> -->
        <el-main>
            <el-select v-model="value" placeholder="请选择" @change="remoteMethod(value)">
                <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value">
                </el-option>
            </el-select>
            <el-table
            :data="tableData"
            style="width: 100%">
            <el-table-column
                prop="goodsNumber"
                label="商品编号"
                width="180">
            </el-table-column>
            <el-table-column
                prop="comingTime"
                label="到达时间"
                width="180">
            </el-table-column>
            <el-table-column
                prop="leavingTime"
                label="离开时间"
                width="180">
            </el-table-column>
            <el-table-column
                prop="stayTime"
                label="停留时间"
            >
            </el-table-column>
            </el-table>
        </el-main>
    </el-container>
</template>

<script>
import axios from 'axios';

  export default {
    name: 'HardWare',
    data() {
      return {
        options: [{
          value: 'cuttingStation',
          label: '切割工位'
        }, {
          value: 'assembleStation',
          label: '组装工位'
        }, {
          value: 'packStation',
          label: '打包工位'
        }],
        value: '',
        tableData: []
      }
    },
    methods: {
        remoteMethod(query){
            axios.get("/business/filter?station="+query).then(resp=>{
                    this.tableData=resp["data"]["data"];
                    console.log(JSON.stringify(resp["data"]["data"]));
                });
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