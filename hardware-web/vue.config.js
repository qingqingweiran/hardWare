const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true
});

let proxyObj={};

proxyObj['/api']={
  ws:false,
  target: 'http://127.0.0.1:8089/',
  changeOrigin: true,
};

module.exports = {
  devServer: {
      // host:"localhost",
      // port: 8000, // 源地址端口，自行修改
      // proxy:proxyObj
      proxy: {
          '/': {
            ws:false,
            target: 'http://127.0.0.1:8000/',  // 跨域目标主机，自行修改
    
            changeOrigin: true,
      
          },
      }
  }
};
