/*
 toolbox sqllite数据库
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for ToolCategorys
-- ----------------------------
DROP TABLE IF EXISTS "ToolCategorys";
CREATE TABLE "ToolCategorys" (
  "CategoryId" TEXT NOT NULL PRIMARY KEY,
  "CategoryName" TEXT NOT NULL
);

-- ----------------------------
-- Table structure for ToolSubcategorys
-- ----------------------------
DROP TABLE IF EXISTS "ToolSubcategorys";
CREATE TABLE "ToolSubcategorys" (
  "CategoryId" TEXT NOT NULL,
  "SubcategoryId" TEXT NOT NULL,
  "SubcategoryName" TEXT NOT NULL
);

-- ----------------------------
-- Table structure for ToolOverviews
-- ----------------------------
DROP TABLE IF EXISTS "ToolOverviews";
CREATE TABLE "ToolOverviews" (
  "ToolId" TEXT NOT NULL PRIMARY KEY,
  "CategoryId" TEXT NOT NULL,
  "SubcategoryId" TEXT,
  "ToolName" TEXT NOT NULL,
  "ToolLogo" TEXT,
  "FunctionSummary" TEXT,
  "OfficialWebsite" TEXT,
  "Tags" TEXT,
  "ScreenshotNumber" INTEGER
);

-- ----------------------------
-- Table structure for ToolOverviews
-- ----------------------------
DROP TABLE IF EXISTS "ToolRecommendations";
CREATE TABLE "ToolRecommendations" (
  "ToolId" TEXT NOT NULL PRIMARY KEY,
  "CreateTime" TEXT NOT NULL
);

-- ----------------------------
-- 每日推荐
-- ----------------------------
INSERT INTO "ToolRecommendations" VALUES ('Aa01', '20250130');
INSERT INTO "ToolRecommendations" VALUES ('Ca01', '20250130');
INSERT INTO "ToolRecommendations" VALUES ('Da01', '20250130');

-- ----------------------------
-- AI工具
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('A', 'AI工具');

INSERT INTO "ToolSubcategorys" VALUES ('A', 'a', '综合门户');
INSERT INTO "ToolSubcategorys" VALUES ('A', 'b', '对话聊天');

INSERT INTO "ToolOverviews" VALUES ('Aa01', 'A', 'a', 'AI工具集', 'https://ai-bot.cn/wp-content/uploads/2023/03/ai-bot-square-logo.png', 'AI工具集官网收录了国内外数百个AI工具，该导航网站包括AI写作工具、AI图像生成和背景移除、AI视频制作、AI音频转录、AI辅助编程、AI音乐生成、AI绘画设计、AI对话聊天等AI工具集合大全，以及AI学习开发的常用网站、框架和模型，帮助你加入人工智能浪潮，自动化高效完成任务！', 'https://ai-bot.cn/favorites/ai-video-tools/', 'AI工具；AI教程；AI资讯', 4);
INSERT INTO "ToolOverviews" VALUES ('Aa02', 'A', 'a', 'AI秘塔', 'https://metaso.cn/favicon.ico', '秘塔AI搜索，没有广告，直达结果', 'https://metaso.cn/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Aa03', 'A', 'a', 'AI工具导航', 'https://www.aig123.com/wp-content/themes/onenav/images/favicon.png', 'Aig123.com是一个AI工具网址导航站，为您收集国内外AI工具、网站、软件、APP，涵盖AI写作、AI绘画、AI聊天、AI视频、AI音乐、AI游戏、AI办公、AI编程等领域，同时为您分享各类AI热点资讯、AI市场信息、AI软件教程、AI学习研究、AI行业应用等等……', 'https://www.aig123.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab01', 'A', 'b', 'ChatGPT', 'https://cdn.oaistatic.com/assets/favicon-o20kmmos.svg', 'ChatGPT helps you get answers, find inspiration and be more productive. It is free to use and easy to try. Just ask and ChatGPT can help with writing, learning, brainstorming and more.', 'https://chatgpt.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab02', 'A', 'b', 'Kimi.ai', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABhCAYAAAApxKSdAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAUUSURBVHgB7Z29bhtHFIWPHQN2J7lKqnhYpYvpIukCbJEAKQJEegLReYFIT0DrCSI9QEDqCSIDaQIEIOukiJwyza5SJWlId3FFz+HuGmuSSw6p+dlZ3g84luhdUeI9M3fmziyXgBCUe/DHYY0Wj/tgWmjV42zFcWe4MIBBPNJ6qqW0uvAbXFvQgKzQK62bQhkaCIPc10q1Zi3XH1o/IG9cwUm0RogrgDY1KmLgHYX9DvyiBvDYI77XmiD+oLlQHw7hIDoCMBOt1U9w0BsU9mOAtaUUFk3oQoIfzAQFCf5dNMEdTFCQ4NtQih1NSIGgf3ibxOJt5UrAB1gNK72vIdjiI61HWr+YnNxDXK0rJiULsV65GJeiIescLSTTeobKSutiCuojX8kU3MBx4I3WeNVBBRl4fWiCyoB8v2JAAkk9PmDwT8sH1TEghRjgC27scCx41wO43KAg+ILxTvhNaUACwTc04Z0B30LwzTzm5Rjw3sgseIG1wGMawMBPIOQcqvzrNIMHOg9Q5KK953O90/rFC+BhJRH8PQZ+fu7SjC7HAIV95yu99vjlxfvBJx8nwHd6IfNJAkccOjHg6OgIs9lsra6vr2GTNE03/k7q8HAhyJ/2gM9O65/4kT7/mwEcoZwYsPQiV3BwcABb9Ho9KKU2njccDjGdLlxx+InBBPBAAR86ydRPaIC9SASi3+8bnXd+fr78nw8NJ39uDJjXAVFPP7dp/VmWLR9g6w6Huo/IOTk5MTpvZesn/93AiP/dXCwd9SyILT9Jko3n1bZ+8s8rGPGvoVHbEXcPMM39V1dX9Qd/19PPNxta959D4HUGF0RrAFs/8/8mxuPxXLUwtfx2WX+cxdivZ3DFA0SKldZPuPTAKrikbOlMOX+9zFu/Q2iAQoSY5H7mfeb/tXCT8MdneU9wNNCuQUXZA0ynnrUznyqOcrspUY4BJunHqPU3gOgMsNr6G0B0BpgUXrG0fhKVAaaF1/HxMWIhKgNMcj9Tz82Nk6rVGdav/tJ5eraJ0Wi01XPq1r/xOS8uLkJc6XYnRTMNXdf62eIvLy+jyftVghnQ7Xahe8FW59fBTRYOzosDNI1hJdz0lBQkBflkMBjMU5iL13pXRb8fYAJrB/a2db0oFHthAOEUliaYFHE+aaUBdZsvvFhApyM0idYZwOCvW4JmIWdSzPmidQaYrAGZ7iX4oFUGnJ2dGdUCTRqMozeANQCLsE6nA10JG/0Mx4KmDMbBCjEWR2yxu8LAM98vXelmCA2ovVLCI8EMYODWbpbvCXtTBzQVMSAwYkBgxIDAtNKAXWdGIRADAiMpKDA0IIMQikx6QGDEgMCIAYGRMSAsMgaEhgbcQgjFa+kBYZnIGBCWWzEgLPNBOJ6Fk/aR8Y5ZCvktKwX/PJZ7xoVjfs+4chYU11tK2sE85qUBLyH4Zh5z6QHhGPOf6r2j+TEbcgdFP2RaHX5TrYQlDflj5RXE5Q1cG/lWnhYpReUGKdUewGnRmhvnCJbgmxey8sHiZ8iwF3AsUBBckKHI/SWLq6HsBc8huML4DiK80D6WnBqLzN68UFCmopheYJOVYgcU5FOVbAVfYUcUZGoaLPglCtITdg2+tZUFBTFh2+ArWEYh/7z0WIIQSiM43lt5AWAmWhLHylN4QmkNEXfAbGqEQKsHSfHLYwiSq8AnaAAKeaW3D8VbijwNW5nh3IN9FPI/jnpaPKZi2/SfFuJu4W3x9RqWL+N5C+7ruKpBAgLkAAAAAElFTkSuQmCC', 'Kimi是一款学生和职场人的新质生产力工具，帮你解读论文，策划方案，创作小说，写代码查BUG，多语言翻译，有问题问Kimi，一键解决你的所有难题', 'https://kimi.moonshot.cn/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab03', 'A', 'b', '文心一言', 'https://nlp-eb.cdn.bcebos.com/static/eb/asset/logo.8a6b508d.png', '文心一言既是你的智能伙伴，可以陪你聊天、回答问题、画图识图；也是你的AI助手，可以提供灵感、撰写文案、阅读文档、智能翻译，帮你高效完成工作和学习任务。', 'https://yiyan.baidu.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab04', 'A', 'b', '豆包', 'https://lf-flow-web-cdn.doubao.com/obj/flow-doubao/doubao/logo-doubao-overflow.png', '豆包是你的 AI 聊天智能对话问答助手，写作文案翻译情感陪伴编程全能工具。豆包为你答疑解惑，提供灵感，辅助创作，也可以和你畅聊任何你感兴趣的话题。', 'https://www.doubao.com/chat/', '', 0);

-- ----------------------------
-- 图片
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('B', '图片');

INSERT INTO "ToolSubcategorys" VALUES ('B', 'a', '默认');

INSERT INTO "ToolOverviews" VALUES ('Ba01', 'B', 'a', 'ACONVERT.COM', 'https://www.aconvert.com/favicon.ico', '转换，图标，压缩，尺寸，合并，裁剪，旋转，编辑。', 'https://www.aconvert.com/cn/image/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba02', 'B', 'a', 'Photopea', 'https://www.photopea.com/promo/icon512.png', 'Photopea在线照片编辑器允许您编辑照片、应用效果、滤镜、添加文本、裁剪或调整图片大小。在浏览器中免费进行在线照片编辑！', 'https://www.photopea.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba03', 'B', 'a', 'UU在线工具', 'https://uutool.cn/assets/images/favicon.png', '二维码批量生成，图片300DPI分辨率修改，证件照换底色，多图合一拼图，报名证件照处理，图像反相/反色，二维码识别解码，证件照尺寸大小任意修改，证件照剪切生成……', 'https://uutool.cn/type/image/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba04', 'B', 'a', '改图宝', 'https://www.gaitubao.com/favicon.ico', '改图宝是一个在线修改图片(照片)大小和尺寸的免费软件，可把上传照片调整或裁剪为一寸、两寸等尺寸，并能对图片进行压缩大小、修改分辨率、旋转、转换格式、加水印等编辑；适用于公务员、英语、计算机、会计、护士、建造师等考试入学网上报名照片和社保、签证等证件照片及微信图片的处理；现在就使用改图宝在线修改图片大小和尺寸吧！', 'https://www.gaitubao.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba05', 'B', 'a', '迷你工具箱', 'https://r2.lazyers.tools/logo/LiziBuluo.ico', '图片转像素画，像素画制作器，图表（饼图、柱形图、雷达图、树状图、思维导图）制作。', 'http://www.lizibuluo.com', '', 0);

-- ----------------------------
-- 音视频
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('C', '音视频');

INSERT INTO "ToolSubcategorys" VALUES ('C', 'a', '下载');
INSERT INTO "ToolSubcategorys" VALUES ('C', 'b', '在线播放');

INSERT INTO "ToolOverviews" VALUES ('Ca01', 'C', 'a', 'cobalt', 'https://r2.lazyers.tools/logo/cobalt.png', 'Cobalt可以让你保存你喜欢的东西，而不需要广告、跟踪、付费墙或其他无用的东西。只需粘贴链接，你就可以嗨起来了！', 'https://cobalt.tools/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ca02', 'C', 'a', 'TubeGet', 'https://www.gihosoft.com/wp-includes/images/w-logo-blue-white-bg.png', 'Gihosoft TubeGet是一款免费的YouTube视频下载软件。Gihosoft TubeGet可以下载包括YouTube在内的1万多个视频网站，还可以批量下载视频，同步下载字幕文件，支持转换各种流行格式。同时Gihosoft TubeGet还可以直接将下载的视频转换为MP3。新增手机管理功能，将视频传输到Android，IOS 等移动设备。', 'https://www.gihosoft.com/free-youtube-downloader.html', '视频下载；部分免费', 3);
INSERT INTO "ToolOverviews" VALUES ('Ca03', 'C', 'a', '音乐魔石', 'https://yym4.com/img/favicon.png', '音乐魔石官网提供全网无损音乐、Mp3歌曲免费下载、MP3免费下载、WAV免费下载、音乐免费下载、mp3歌曲免费下载、mp3下载、WAV歌曲免费下载、音乐免费下载、网盘音乐下载、网络音乐排行、网络热门歌曲、非主流音乐、经典老歌、劲舞团歌曲、搞笑歌曲、儿童歌曲、网络歌曲等，收录了网上最新歌曲和流行音乐、网络歌曲、好听的歌、非主流音乐、经典老歌、搞笑歌曲、儿童歌曲、英文歌曲等,为广大音乐爱好者提供音乐交流及资源分享平台。', 'https://yym4.com/', '免费；网盘下载', 0);

INSERT INTO "ToolOverviews" VALUES ('Cb01', 'C', 'b', 'APP影院', 'https://cdn.wyteam.net/webapps/maccms/template/blueghost/img/favicon.ico', '提供最新最快的影视资讯和在线播放-免费电影-全网最全视频库-全网最全免费影院-免费影视-免费电视剧-免费影院', 'https://www.appmovie.link/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Cb02', 'C', 'b', '中国纪录片网', 'http://www.docuchina.cn/favicon.ico', '一个非常值得纪录片创作者和爱好者收藏的纪录片网站。', 'http://www.docuchina.cn/', '', 0);

-- ----------------------------
-- PC 日常
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('D', 'PC 日常');

INSERT INTO "ToolSubcategorys" VALUES ('D', 'a', '装机必备');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'b', '邮箱');

INSERT INTO "ToolOverviews" VALUES ('Da01', 'D', 'a', 'Potplayer', 'https://t1.daumcdn.net/potplayer/main/img/favicon.ico', 'PotPlayer 可以说是当今 Windows 平台上功能最强大的多媒体播放器（之一？），无广告，不流氓，界面简洁，纯粹为播放而生！', 'https://potplayer.daum.net/?lang=zh_CN', '无广告；界面简洁；功能强大', 2);
INSERT INTO "ToolOverviews" VALUES ('Da02', 'D', 'a', 'Geek Uninstaller', 'https://geekuninstaller.com/assets/images/icon_geek_32@2x.png', '最好的免费卸载程序。高效快速，小巧便携。100%免费。', 'https://geekuninstaller.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Da03', 'D', 'a', '7-Zip', 'https://www.7-zip.org/7ziplogo.png', '7-Zip 是一款功能强大且广受欢迎的解压缩软件，支持多种流行的压缩格式，能高效地压缩和解压缩文件，提供出色的压缩比。', 'https://www.7-zip.org/', '无广告', 0);
INSERT INTO "ToolOverviews" VALUES ('Da04', 'D', 'a', 'Google Chrome 网络浏览器', 'https://www.google.cn/chrome/static/images/favicons/favicon-32x32.png', 'Chrome 是 Google 的官方网络浏览器，速度飞快，安全可靠，并且支持自定义。', 'https://www.google.cn/chrome/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Da05', 'D', 'a', 'Microsoft 365', 'https://res.cdn.office.net/officehub/images/content/images/favicon_copilot-4370172aa6.ico', 'Microsoft 365 Copilot 应用 (以前称为 Office) 可让你使用自己喜欢的应用在一个位置创建、共享和协作，这些应用现在包含 Copilot。', 'https://www.office.com/', '订阅服务', 0);
INSERT INTO "ToolOverviews" VALUES ('Da06', 'D', 'a', '迅雷', 'https://www.xunlei.com/icons/logo.svg', '迅雷是迅雷公司开发的一款基于多资源超线程技术的下载软件，作为“宽带时期的下载工具”，迅雷针对宽带用户做了优化，并同时推出了“智能下载”的服务。迅雷利用多资源超线程技术基于网格原理，能将网络上存在的服务器和计算机资源进行整合，构成迅雷网络，通过迅雷网络各种数据文件能够传递。多资源超线程技术还具有互联网下载负载均衡功能，在不降低用户体验的前提下，迅雷网络可以对服务器资源进行均衡。', 'https://www.xunlei.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Da07', 'D', 'a', '百度网盘', 'https://nd-static.bdstatic.com/m-static/wp-brand/favicon.ico', '百度网盘（原百度云）是百度推出的一项云存储服务，已覆盖主流PC和手机操作系统，包含Web版、Windows版、Mac版、Android版、Linux信创版、青春版、TV版、iPhone版和iPad版，并覆盖了主流联网车和非联网车。', 'https://pan.baidu.com/download', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Db01', 'D', 'b', 'QQ邮箱', 'https://mail.qq.com/zh_CN/htmledition/images/favicon/qqmail_favicon_48h.png', 'QQ邮箱，为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它，通过邮件发送3G的超大附件，体验文件中转站、日历、记事本、漂流瓶等特色功能。QQ邮箱，常联系。', 'https://mail.qq.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db02', 'D', 'b', 'Gmail', 'https://ssl.gstatic.com/ui/v1/icons/mail/rfr/gmail.ico', 'Google 的电子邮件服务', 'https://mail.google.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db03', 'D', 'b', '163网易免费邮', 'https://mail.163.com/favicon.ico', '网易163免费邮箱，你的专业电子邮局，注册用户数超10亿，专业稳定安全。网易邮箱官方App“邮箱大师”帮您高效处理邮件，支持所有邮箱，并可在手机、Windows和Mac上多端协同使用。', 'https://mail.163.com/', '', 0);

-- ----------------------------
-- 软件开发
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('E', '软件开发');

INSERT INTO "ToolSubcategorys" VALUES ('E', 'a', '编程语言');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'b', '语言框架');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'c', '开发运维工具');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'd', '服务器');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'e', '域名');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'f', '图标库');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'g', '开源项目');

INSERT INTO "ToolOverviews" VALUES ('Ea01', 'E', 'a', 'HTML', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', 'HTML（超文本标记语言——HyperText Markup Language）是构成 Web 世界的一砖一瓦。它定义了网页内容的含义和结构。', 'https://developer.mozilla.org/zh-CN/docs/Web/HTML', '前端', 0);
INSERT INTO "ToolOverviews" VALUES ('Ea02', 'E', 'a', 'CSS', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', '层叠样式表（Cascading Style Sheets，缩写为 CSS）是一种样式表语言，用来描述 HTML 或 XML（包括如 SVG、MathML 或 XHTML 之类的 XML 分支语言）文档的呈现方式。CSS 描述了在屏幕、纸质、音频等其他媒体上的元素应该如何被渲染的问题。', 'https://developer.mozilla.org/zh-CN/docs/Web/CSS', '前端', 0);
INSERT INTO "ToolOverviews" VALUES ('Ea03', 'E', 'a', 'JavaScript', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', 'JavaScript（JS）是一种具有函数优先特性的轻量级、解释型或者说即时编译型的编程语言。虽然作为 Web 页面中的脚本语言被人所熟知，但是它也被用到了很多非浏览器环境中，例如 Node.js、Apache CouchDB、Adobe Acrobat 等。进一步说，JavaScript 是一种基于原型、多范式、单线程的动态语言，并且支持面向对象、命令式和声明式（如函数式编程）风格。', 'https://developer.mozilla.org/zh-CN/docs/Web/JavaScript', '前端', 0);

INSERT INTO "ToolOverviews" VALUES ('Ec01', 'E', 'c', 'Ping检测', 'https://csstools.chinaz.com/favicon.ico', '通过该工具可以多个地点Ping服务器以检测服务器响应速度。', 'https://ping.chinaz.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ec02', 'E', 'c', '端口扫描', 'https://csstools.chinaz.com/favicon.ico', '通过该工具可以扫描常用的端口和指定的端口是否开放。', 'https://tool.chinaz.com/port/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Ed01', 'E', 'd', 'Vultr', 'https://r2.lazyers.tools/logo/Vultr.webp', 'Vultr 是一家全球性的云服务器提供商，用户可以根据需求选择不同的 CPU、内存、硬盘、流量和机房等配置，所有 VPS 都采用全 SSD 固态硬盘存储、支持多种操作系统、按小时计费随时换IP，提供简单便捷的快速部署功能。', 'https://my.vultr.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ed02', 'E', 'd', '彩虹云', 'https://www.cccyun.net/favicon.ico', '彩虹云主机提供免备案CDN，免备案空间，全光纤网络，BGP智能多线，直连大陆ChinaNET骨干端口,资源存放在郑州、洛阳、洛杉矶、韩国、香港等多个数据中心,已实现所有主机/云服务器的SSD固态硬盘部署，硬盘读写能力提升5倍，彻底解决高并发问题，可满足高IO需求的数据库等在线业务。', 'https://www.cccyun.net/?invite=207160', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ed03', 'E', 'd', 'Bluehost', 'https://www.cccyun.net/favicon.ico', 'Bluehost提供专业的美国主机、美国云虚拟主机、香港虚拟主机、美国服务器、香港服务器、VPS云主机等网站空间托管服务。Bluehost作为全球最受信赖的主机商品牌，托管了全球数百万的网站，是外贸建站的首选主机商。', 'https://www.bluehost.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ed04', 'E', 'd', 'Hostinger', 'https://www.hostinger.com/favicon.ico', '选择您的网站虚拟主机解决方案, 打造完美网站！从共享主机和域名到VPS - 我们拥有您实现在线业务成功所需的一切。', 'https://www.hostinger.com/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Ee01', 'E', 'e', 'DigitalPlat Domain', 'https://r2.lazyers.tools/logo/DigitalPlatDomain.jpg', 'DigitalPlat Domain‌是一个提供免费域名注册和管理的平台，旨在为每个人提供一个数字身份。该平台允许用户免费注册独特的域名，并将其托管到自己喜欢的DNS提供商，如Cloudflare、FreeDNS by Afraid.org或Hostry。', 'https://dash.domain.digitalplat.org/', '免费；二级域名', 0);
INSERT INTO "ToolOverviews" VALUES ('Ee02', 'E', 'e', 'GoDaddy', 'https://img6.wsimg.com/ux/favicon/favicon-32x32.png', 'GoDaddy CN专注于提供全球大型技术供应服务及云端产品,业务涵盖域名注册申请,域名查询,域名买卖交易,主机租聘,虚拟主机,商务主机,WordPress主机,VPS主机,专属服务器,外贸自助建站,企业cms建站,电邮营销等一站式服务.域名注册,主机租赁,企业建站请访问GoDaddy CN官网.', 'https://www.godaddy.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ee03', 'E', 'e', 'SugarHosts', 'https://www.sugarhosts.com/templates/sh_christmas2016/favicon.ico', '域名搜索&注册，实时DNS服务。', 'https://www.sugarhosts.com/zh-cn/domains/domain-search', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Ef01', 'E', 'f', 'Bootstrap 官方图标库', 'https://icons.bootcss.com/assets/img/favicons/favicon.ico', '包含 1800 多个图标的免费、高质量的开源图标库。你可以以任何方式使用它们，例如 SVG 矢量图、SVG sprite 或 web 字体形式。不管你是否使用 Bootstrap ，都可以使用本图标库。', 'https://icons.bootcss.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ef02', 'E', 'f', 'iconfont-阿里巴巴矢量图标库', 'https://img.alicdn.com/imgextra/i4/O1CN01XZe8pH1USpiUNT1QN_!!6000000002517-2-tps-114-114.png', 'iconfont-国内功能很强大且图标内容很丰富的矢量图标库，提供矢量图标下载、在线存储、格式转换等功能。阿里巴巴体验团队倾力打造，设计和前端开发的便捷工具', 'https://www.iconfont.cn/collections', '', 0);

-- ----------------------------
-- 魔法上网
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('F', '魔法上网');

INSERT INTO "ToolSubcategorys" VALUES ('F', 'a', '流量购买');
INSERT INTO "ToolSubcategorys" VALUES ('F', 'b', '出墙必看');
INSERT INTO "ToolSubcategorys" VALUES ('F', 'c', 'SMS');

INSERT INTO "ToolOverviews" VALUES ('Fa01', 'F', 'a', '灵魂云', 'https://linghunyun.com/favicon.ico', '使用灵魂云，可以实现魔法上网，全路线IPEC专线，支持iOS、Android、Windows、Mac全平台，且可同时使用，高速稳定，看油管刷推X无压力', 'https://linghunyun.com/#/register?code=hhld6ftW', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fa02', 'F', 'a', 'Akkcloud', 'https://r2.lazyers.tools/logo/Akkcloud.ico', '全球节点分布，24H客服响应，全平台客户端。每月最低只需10元即可享受100G高速流量。', 'https://mirror2.akpnaca.com/auth/register?code=eGPuaC', '', 0);

-- https://qianghub.com/what-to-do-after-bypass-gfw/
INSERT INTO "ToolOverviews" VALUES ('Fb01', 'F', 'b', 'Google 系列服务', 'https://ssl.gstatic.com/ui/v1/icons/mail/rfr/gmail.ico', '包括谷歌搜索、谷歌邮箱、谷歌翻译等，使用它们会为你带来看不完的内容，通向互联网的任意一个角落。', 'https://www.google.com/?hl=zh_CN', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb02', 'F', 'b', '维基百科', 'https://zh.wikipedia.org/static/favicon/wikipedia.ico', '免费的多语言的网络百科全书，类似于中国的百度百科。特点是任何人都可以编辑维基百科中的任何文章及条目。目前是全球网络上最大的参考工具书， 你可以在这里找到任何你想要找到的信息。', 'https://zh.wikipedia.org/wiki/Wikipedia:%E9%A6%96%E9%A1%B5', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb03', 'F', 'b', 'Facebook', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAgVBMVEUAAAAQcP8IZf8IZ/8JZv8HZf8IZv8IZv8IaP8JZ/8HZv8IZv8FZf8YcP9FjP+TvP/g7P/////R4/9Vlf8QYP+Es/9kn/8IZv8nef8JZf8AYP/v9f/Q4v/B2P9GjP8HZv+yz//Q4/83g/8HZv/g6/+Dsv8HZf/n7//////////e6//ZLyHjAAAAK3RSTlMAEGCfz+//XyCQj98w/////////xD//6D/kBD/////7////8///5Cgz+/vONkvXQAAAPJJREFUeAF9kkUCwzAMBGVSGMrM3P//rxBaB+e6s0YREFJpw2y0cgS1cT3DQLmNWPjcwK/XA24RWIuEdg4j7OtHUX0NYedxko5+jCeZMc0En8FsVDDHSd1WDoFdIlogX46awopozWA+ythsd7s9ZxymJBkcs3wcMZC0YHDKhDNbKLowuGYC21zINIWUbQ7EwwJT7YogqgTTKaTY4tIp7HDIRadwwzVlKVyv11HG9cekFBxam8FbTInuQ4LCd3cL2Uzd+4UV/VkHfUIgMLRdQuBi7JsCxh5rQEAfrO9NYSWojruwBOOhDoR8PF+j0fuipNX+AmbCIviMIiwCAAAAAElFTkSuQmCC', '国外最大的社交网站，用户除了文字消息之外，还可发送图片、视频、文档、贴图和声音媒体消息给其他用户，以及透过集成的地图功能分享用户的所在位置。', 'https://www.facebook.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb04', 'F', 'b', 'X(原名Twitter)', 'https://r2.lazyers.tools/logo/X.png', '推特是除 Facebook 外最大的社交博客网站，它是一家美国社交网络及微博客服务的公司，致力于服务公众对话，美国总统都在上面玩，值得探索。', 'https://twitter.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb05', 'F', 'b', 'Telegram', 'https://r2.lazyers.tools/logo/Telegram.ico', '电报（tg）是一个没有审查的应用，并且完全可以匿名，但是使用起来就像微信一样简单而且强大，里面还有很多国人最喜欢加入的群组、频道等。可以创建没有会员上限的群组，许多神秘的群组也值得探索。', 'https://telegram.org/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb06', 'F', 'b', 'Spotify', 'https://r2.lazyers.tools/logo/Spotify.png', 'Spotify 有大量的音乐内容，不仅免费而且曲库众多，音质有保障，甚至国内的小众音乐都很全。它为所有主要平台提供应用程序，包括 iOS 、 Android 和您首选的 Web 浏览器。', 'https://open.spotify.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb07', 'F', 'b', 'YouTube', 'https://r2.lazyers.tools/logo/YouTube.png', '国人称之为油管，里面海量的内容可能让你眼花缭乱，坐拥 10 亿用户，类似国内的 B 站，有大量的免费电影可供选择。', 'https://www.youtube.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fb08', 'F', 'b', 'Netflix', 'https://r2.lazyers.tools/logo/Netflix.ico', '国人称之为网飞或奈飞，是世界最大的会员制流媒体公司，提供了所有流媒体中最“高质量”的电视节目和电影，无论是内容生产还是用户体验都是一级棒。', 'https://www.netflix.com/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Fc01', 'F', 'c', '有信云短信', 'https://www.zusms.com/images/logo.png', '短信接收,无敌云短信,信码通,有信云短信,超级云短信,本平台可以在线接收短信，接收短信验证码，显示迅速，比国外类似短信验证码接收更快捷。在线短信接收平台,免费验证码接收平台,虚拟手机号接收短信app,哪个短信平台比较好,代收手机短信验证码,虚拟手机号码接收短信,国外短信接收平台,手机短信验证码,手机验证码平台,接码平台,短信验证码,验证码平台,云验证码平台,短信验证码是多少,手机短信验证码接收系统,验证码短信平台,虚拟手机号验证码平台,手机收不到验证码,手机验证码接收软件,免费的临时手机号软件,手机获取验证码收费吗,虚拟手机验证码生成器,免费的临时手机号软件,网站验证码短信平台,接收手机验证码平台,发短信最便宜,手机收验证码服务,网站注册手机验证码，接码，接码平台，在线接码', 'https://www.zusms.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Fc02', 'F', 'c', 'SMS-Activate', 'https://r2.lazyers.tools/logo/SMS-Activate.png', '使用SMS-Activate的虚拟号码来在线接受短信。可以在600个多服务注册的一次性号码。短信即刻送到给你，低价', 'https://sms-activate.guru/', '', 0);

-- ----------------------------
-- 网络资源
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('G', '网络资源');


PRAGMA foreign_keys = true;
