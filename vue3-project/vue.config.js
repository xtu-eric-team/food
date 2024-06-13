const { defineConfig } = require("@vue/cli-service");
const AutoImport = require("unplugin-auto-import/webpack");
const Components = require("unplugin-vue-components/webpack");
const { ElementPlusResolver } = require("unplugin-vue-components/resolvers");
module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave:false,
  configureWebpack: {
    plugins: [
      AutoImport({
        resolvers: [ElementPlusResolver()],
      }),
      Components({
        resolvers: [ElementPlusResolver()],
      }),
    ],
  },
  devServer: {
    proxy: {
      '/api': {
        target: 'http://localhost:6688',//目标地址 请求的后台接口 
        ws: true,
        changeOrigin: true,
        pathRewrite:{//路径重写
          "^/api":''
        }
      },
    
    }
  }

});
