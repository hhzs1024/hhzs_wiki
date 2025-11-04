# markdown链接
```
格式1：[链接名称](链接地址)
```

这是一个简单链接 [菜鸟教程](https://www.runoob.com)  
欢迎访问 [Github](https://github.com) 官网  
这是 [百度搜索](https://baidu.com "百度一下，你就知道")   
联系方式：[发送邮件](mailto:1360502380@qq.com)  
电话联系：[拨打电话](tel:+86-138-0013-8000)

```
格式2：(推荐)
markdown[链接文字][参考标签]
[参考标签]: URL　"可选标题"
```

####在线教程  
- [MDN Web Docs][mdn] - 权威的web技术文档
- [runoob][rnb] - 适合初学者的教程网站

#### 代码托管  
- [github][github] - 最受欢迎的代码托管服务  

<!-- 链接定义区域 -->
[mdn]: https://developer.mozilla.org/
[rnb]: https://www.runoob.com/
[github]: https//github.com/ "hhzs1024"

自动识别：  
markdown直接输入网址：https://www.example.com  
用尖括号包围：<https://www.example.com>  

#### 锚点链接
```
[前台显示](#后台链接)
小写，无特殊符号，中文链接需要特殊处理
中文自定义锚点位置 <a id="custom-anchor"></a>
```
    

## 目录
- [第一章：介绍](#123)
- [第二章：安装](#第二章安装)
- [第三章：使用方法](#第三章使用方法)

### <a id="123">第一章：介绍</a>
这里是介绍内容...

### 第二章：安装
这里是安装说明...

### 第三章：使用方法
这里是使用说明...


[回到顶部](#)
  
  
  
  
  


---
# markdown 图片
    ![替代文字](图片路径)
    ![替代文字](图片路径 "图片标题")

![123](../image/pig.png)

#### 图片尺寸控制
需要使用HTML标签控制，在mkdocs.yaml文件添加`use_directory_urls: false`来解决<img>图片加载失败问题  
<img src="../image/pig.png" width="24">

<img src="../image/pig.png" alt="描述文字" width="24" height="24">
<img src="../image/捕获.PNG" alt="描述文字" width="50%">
<img src="../image/pig.png" alt="描述文字" style="width: 24px; height: auto;">

> 居中

<div align="center">
  <img src="../image/pig.png" alt="juzhong">
</div>

  <img src="../image/pig.png" alt="juzhong" style="float:left;margin-right:20px;">

  <img src="../image/pig.png" alt="juzhong" style="float:right;margin-right:20px;">

> 微标
<!-- 项目徽章 -->
微标，可以使用 [shiedls.io](https://shiedls.io) 实现以下效果，[教程](https://www.cnblogs.com/champyin/p/11627385.html)  
[![Build Status](https://travis-ci.org/user/repo.svg?branch=master)](https://travis-ci.org/user/repo)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
![GitHub Created At](https://img.shields.io/github/created-at/mashape/apistatus)
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/t/hhzs1024/knob_soft_LCD/gh-pages?style=social&logo=github)

> 画廊
<div style="display: flex; justify-content: space-around; flex-wrap: wrap;">
  <img src="../image/pig.png" alt="图片1" style="width: 5%; margin: 10px;">
  <img src="../image/pig.png" alt="图片2" style="width: 5%; margin: 10px;">
  <img src="../image/pig.png" alt="图片3" style="width: 5%; margin: 10px;">
</div>





---
# markdown表格
语法格式如下：
```
|  表头   | 表头  |
|  ----  | ----  |
| 单元格  | 单元格 |
| 单元格  | 单元格 |
```
####语法要点：
- 表头与数据行之间要有分割线，至少3个连字符`---`
- 两端竖线`|`可选，建议保留
- 不需要严格对齐

```
对齐方式：
| 左对齐 | 右对齐 | 居中对齐 |
| :-----| ----: | :----: |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |
```
| 左对齐 | 右对齐 | 居中对齐 |
| :-----| ----: | :----: |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |

```
表格支持markdown大部分语法：
| 功能 | 描述 | 状态 |
|------|------|:----:|
| **用户登录** | 支持邮箱和手机号登录 | &#x2705; |
| *密码重置* | 通过邮箱重置密码 | &#x26a0;&#xfe0f; |
| `API接口` | RESTful API 设计 | &#x2705; |
| [文档链接](https://example.com) | 查看详细文档 | &#x1f4d6; |
```
| 功能 | 描述 | 状态 |
|------|------|:----:|
| **用户登录** | 支持邮箱和手机号登录 | &#x2705; |
| *密码重置* | 通过邮箱重置密码 | &#x26a0;&#xfe0f; |
| `API接口` | RESTful API 设计 | &#x2705; |
| [文档链接](https://example.com) | 查看详细文档 | &#x1f4d6; |

> 单元格内换行可以使用`<br>`

---

# 张三 | 前端开发工程师

## &#x1f4de; 联系方式
- **邮箱**: zhangsan@email.com
- **电话**: 138-0000-0000
- **GitHub**: [github.com/zhangsan](https://github.com/zhangsan)
- **LinkedIn**: [linkedin.com/in/zhangsan](https://linkedin.com/in/zhangsan)
- **地址**: 上海市浦东新区

## &#x1f3af; 职业目标
具有3年前端开发经验的工程师，专注于React生态系统和现代化Web应用开发。寻求在创新型公司中担任高级前端开发职位，希望参与大型项目的架构设计和团队协作。

## &#x1f4bc; 工作经验

### 高级前端开发工程师 | ABC科技有限公司
**2022.03 - 至今**

- 负责公司核心产品的前端开发，用户量达100万+
- 使用React、TypeScript构建可维护的大型单页应用
- 与产品和设计团队协作，将设计稿转化为高质量的用户界面
- 建立前端组件库，提升团队开发效率30%
- **技术栈**: React, TypeScript, Redux, Webpack, Jest

### 前端开发工程师 | XYZ互联网公司
**2021.06 - 2022.02**

- 参与电商平台的前端开发和维护工作
- 优化页面性能，首屏加载时间减少40%
- 负责移动端H5页面开发，适配多种设备
- **技术栈**: Vue.js, JavaScript, SCSS, Element UI
