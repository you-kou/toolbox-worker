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
INSERT INTO "ToolRecommendations" VALUES ('Ba08', '20250130');

-- ----------------------------
-- AI工具
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('A', 'AI 工具');

INSERT INTO "ToolSubcategorys" VALUES ('A', 'a', '综合');
INSERT INTO "ToolSubcategorys" VALUES ('A', 'b', '对话');
INSERT INTO "ToolSubcategorys" VALUES ('A', 'c', '图片');

INSERT INTO "ToolOverviews" VALUES ('Aa01', 'A', 'a', 'AI工具集', 'https://ai-bot.cn/wp-content/uploads/2023/03/ai-bot-square-logo.png', 'AI工具集官网收录了国内外数百个AI工具，该导航网站包括AI写作工具、AI图像生成和背景移除、AI视频制作、AI音频转录、AI辅助编程、AI音乐生成、AI绘画设计、AI对话聊天等AI工具集合大全，以及AI学习开发的常用网站、框架和模型，帮助你加入人工智能浪潮，自动化高效完成任务！', 'https://ai-bot.cn/favorites/ai-video-tools/', 'AI工具；AI教程；AI资讯', 3);
INSERT INTO "ToolOverviews" VALUES ('Aa02', 'A', 'a', 'AI秘塔', 'https://metaso.cn/favicon.ico', '秘塔AI搜索，没有广告，直达结果', 'https://metaso.cn/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Aa03', 'A', 'a', 'AI工具导航', 'https://www.aig123.com/wp-content/themes/onenav/images/favicon.png', 'Aig123.com是一个AI工具网址导航站，为您收集国内外AI工具、网站、软件、APP，涵盖AI写作、AI绘画、AI聊天、AI视频、AI音乐、AI游戏、AI办公、AI编程等领域，同时为您分享各类AI热点资讯、AI市场信息、AI软件教程、AI学习研究、AI行业应用等等……', 'https://www.aig123.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab01', 'A', 'b', 'ChatGPT', 'https://cdn.oaistatic.com/assets/favicon-o20kmmos.svg', 'ChatGPT helps you get answers, find inspiration and be more productive. It is free to use and easy to try. Just ask and ChatGPT can help with writing, learning, brainstorming and more.', 'https://chatgpt.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab02', 'A', 'b', 'DeepSeek', 'https://chat.deepseek.com/favicon.svg', '深度求索（DeepSeek）助力编程代码开发、创意写作、文件处理等任务，支持文件上传及长文本对话，随时为您提供高效的AI支持。', 'https://chat.deepseek.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab03', 'A', 'b', 'Kimi.ai', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABhCAYAAAApxKSdAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAUUSURBVHgB7Z29bhtHFIWPHQN2J7lKqnhYpYvpIukCbJEAKQJEegLReYFIT0DrCSI9QEDqCSIDaQIEIOukiJwyza5SJWlId3FFz+HuGmuSSw6p+dlZ3g84luhdUeI9M3fmziyXgBCUe/DHYY0Wj/tgWmjV42zFcWe4MIBBPNJ6qqW0uvAbXFvQgKzQK62bQhkaCIPc10q1Zi3XH1o/IG9cwUm0RogrgDY1KmLgHYX9DvyiBvDYI77XmiD+oLlQHw7hIDoCMBOt1U9w0BsU9mOAtaUUFk3oQoIfzAQFCf5dNMEdTFCQ4NtQih1NSIGgf3ibxOJt5UrAB1gNK72vIdjiI61HWr+YnNxDXK0rJiULsV65GJeiIescLSTTeobKSutiCuojX8kU3MBx4I3WeNVBBRl4fWiCyoB8v2JAAkk9PmDwT8sH1TEghRjgC27scCx41wO43KAg+ILxTvhNaUACwTc04Z0B30LwzTzm5Rjw3sgseIG1wGMawMBPIOQcqvzrNIMHOg9Q5KK953O90/rFC+BhJRH8PQZ+fu7SjC7HAIV95yu99vjlxfvBJx8nwHd6IfNJAkccOjHg6OgIs9lsra6vr2GTNE03/k7q8HAhyJ/2gM9O65/4kT7/mwEcoZwYsPQiV3BwcABb9Ho9KKU2njccDjGdLlxx+InBBPBAAR86ydRPaIC9SASi3+8bnXd+fr78nw8NJ39uDJjXAVFPP7dp/VmWLR9g6w6Huo/IOTk5MTpvZesn/93AiP/dXCwd9SyILT9Jko3n1bZ+8s8rGPGvoVHbEXcPMM39V1dX9Qd/19PPNxta959D4HUGF0RrAFs/8/8mxuPxXLUwtfx2WX+cxdivZ3DFA0SKldZPuPTAKrikbOlMOX+9zFu/Q2iAQoSY5H7mfeb/tXCT8MdneU9wNNCuQUXZA0ynnrUznyqOcrspUY4BJunHqPU3gOgMsNr6G0B0BpgUXrG0fhKVAaaF1/HxMWIhKgNMcj9Tz82Nk6rVGdav/tJ5eraJ0Wi01XPq1r/xOS8uLkJc6XYnRTMNXdf62eIvLy+jyftVghnQ7Xahe8FW59fBTRYOzosDNI1hJdz0lBQkBflkMBjMU5iL13pXRb8fYAJrB/a2db0oFHthAOEUliaYFHE+aaUBdZsvvFhApyM0idYZwOCvW4JmIWdSzPmidQaYrAGZ7iX4oFUGnJ2dGdUCTRqMozeANQCLsE6nA10JG/0Mx4KmDMbBCjEWR2yxu8LAM98vXelmCA2ovVLCI8EMYODWbpbvCXtTBzQVMSAwYkBgxIDAtNKAXWdGIRADAiMpKDA0IIMQikx6QGDEgMCIAYGRMSAsMgaEhgbcQgjFa+kBYZnIGBCWWzEgLPNBOJ6Fk/aR8Y5ZCvktKwX/PJZ7xoVjfs+4chYU11tK2sE85qUBLyH4Zh5z6QHhGPOf6r2j+TEbcgdFP2RaHX5TrYQlDflj5RXE5Q1cG/lWnhYpReUGKdUewGnRmhvnCJbgmxey8sHiZ8iwF3AsUBBckKHI/SWLq6HsBc8huML4DiK80D6WnBqLzN68UFCmopheYJOVYgcU5FOVbAVfYUcUZGoaLPglCtITdg2+tZUFBTFh2+ArWEYh/7z0WIIQSiM43lt5AWAmWhLHylN4QmkNEXfAbGqEQKsHSfHLYwiSq8AnaAAKeaW3D8VbijwNW5nh3IN9FPI/jnpaPKZi2/SfFuJu4W3x9RqWL+N5C+7ruKpBAgLkAAAAAElFTkSuQmCC', 'Kimi是一款学生和职场人的新质生产力工具，帮你解读论文，策划方案，创作小说，写代码查BUG，多语言翻译，有问题问Kimi，一键解决你的所有难题', 'https://kimi.moonshot.cn/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab04', 'A', 'b', '文心一言', 'https://nlp-eb.cdn.bcebos.com/static/eb/asset/logo.8a6b508d.png', '文心一言既是你的智能伙伴，可以陪你聊天、回答问题、画图识图；也是你的AI助手，可以提供灵感、撰写文案、阅读文档、智能翻译，帮你高效完成工作和学习任务。', 'https://yiyan.baidu.com/', '百度', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab05', 'A', 'b', '豆包', 'https://lf-flow-web-cdn.doubao.com/obj/flow-doubao/doubao/logo-doubao-overflow.png', '豆包是你的 AI 聊天智能对话问答助手，写作文案翻译情感陪伴编程全能工具。豆包为你答疑解惑，提供灵感，辅助创作，也可以和你畅聊任何你感兴趣的话题。', 'https://www.doubao.com/chat/', '字节跳动', 0);
INSERT INTO "ToolOverviews" VALUES ('Ab06', 'A', 'b', '通义', 'https://img.alicdn.com/imgextra/i4/O1CN01EfJVFQ1uZPd7W4W6i_!!6000000006051-2-tps-112-112.png', '通义是一个通情、达义的国产AI模型，可以帮你解答问题、文档阅读、联网搜索并写作总结，最多支持1000万字的文档速读。通义tongyi.ai_你的全能AI助手。', 'https://tongyi.aliyun.com/qianwen/', '阿里巴巴', 0);
INSERT INTO "ToolOverviews" VALUES ('Ac01', 'A', 'c', 'Raphael AI', 'https://raphael.app/logo.png', 'Raphael 是世界上第一个完全免费、无限的 AI 图像生成器，由 FLUX.1-Dev 模型提供支持。它允许您从文本描述创建高质量图像，而无需任何注册或使用限制。', 'https://raphael.app/', '图像生成；免费', 0);
INSERT INTO "ToolOverviews" VALUES ('Ac02', 'A', 'c', 'Image Describer', 'https://imagedescriber.app/favicon.ico', '在线AI图片描述工具。可提供图片的详细描述。它能分析图片内容，每天可以免费上传三张图片。', 'https://imagedescriber.app/', '图片描述', 0);
INSERT INTO "ToolOverviews" VALUES ('Ac03', 'A', 'c', 'zcoloring', 'https://zcoloring.com/favicon.ico', 'zcoloring 是一款 AI 驱动的着色页生成器，可在 20 秒内根据文本描述创建独特的轮廓，而无需任何绘画技巧！', 'https://zcoloring.com/', '着色页生成器', 0);

-- ----------------------------
-- 生活服务
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('B', '生活服务');

INSERT INTO "ToolSubcategorys" VALUES ('B', 'a', '图片');

-- https://zhuanlan.zhihu.com/p/672923808
INSERT INTO "ToolOverviews" VALUES ('Ba01', 'B', 'a', 'ACONVERT.COM', 'https://www.aconvert.com/favicon.ico', '转换，图标，压缩，尺寸，合并，裁剪，旋转，编辑。', 'https://www.aconvert.com/cn/image/', '图片处理', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba02', 'B', 'a', 'Photopea', 'https://www.photopea.com/promo/icon512.png', 'Photopea在线照片编辑器允许您编辑照片、应用效果、滤镜、添加文本、裁剪或调整图片大小。在浏览器中免费进行在线照片编辑！', 'https://www.photopea.com/', '在线PS', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba03', 'B', 'a', 'UU在线工具', 'https://uutool.cn/assets/images/favicon.png', '二维码批量生成，图片300DPI分辨率修改，证件照换底色，多图合一拼图，报名证件照处理，图像反相/反色，二维码识别解码，证件照尺寸大小任意修改，证件照剪切生成……', 'https://uutool.cn/type/image/', '图片处理', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba04', 'B', 'a', '改图宝', 'https://www.gaitubao.com/favicon.ico', '改图宝是一个在线修改图片(照片)大小和尺寸的免费软件，可把上传照片调整或裁剪为一寸、两寸等尺寸，并能对图片进行压缩大小、修改分辨率、旋转、转换格式、加水印等编辑；适用于公务员、英语、计算机、会计、护士、建造师等考试入学网上报名照片和社保、签证等证件照片及微信图片的处理；现在就使用改图宝在线修改图片大小和尺寸吧！', 'https://www.gaitubao.com/', '图片处理', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba05', 'B', 'a', '迷你工具箱', 'https://r2.lazyers.tools/logo/LiziBuluo.ico', '图片转像素画，像素画制作器，图表（饼图、柱形图、雷达图、树状图、思维导图）制作。', 'http://www.lizibuluo.com', '图片处理', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba06', 'B', 'a', 'favicon.io', 'https://favicon.io/assets/static/favicon.b9532cc.ed88c65f76fa003989a0c683d668c765.png', 'Favicon.io 是一个免费的在线工具，可以帮助用户创建自定义的网站图标（Favicon）。它提供了一个简单的界面，让用户可以选择不同的图标类型、尺寸和样式，例如圆形、方形、圆角等等。用户可以上传自己的图像文件，或者使用 http://Favicon.io 提供的素材库中的图标。http://Favicon.io 还提供了一些高级选项，例如添加透明度、调整图标的位置和大小、更改背景颜色等等，以便更好地控制图标效果。最终生成的 Favicon 可以直接下载或保存到云端，非常方便。http://Favicon.io 还提供了一些有用的工具，例如将 Favicon 转换为 Apple Touch Icon、Android Chrome Icon 等等。', 'https://favicon.io/', '网站图标', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba07', 'B', 'a', 'Lorem Picsum', 'https://picsum.photos/assets/images/favicon/favicon-32x32.png', 'Lorem Picsum 是一个免费的图片占位符服务，可以用于网站、应用程序或任何需要占位符图片的地方。它提供了一个简单的 API，可以通过 HTTP 请求获取随机图片，也可以指定特定的图片大小和其他参数。Lorem Picsum 还提供了一个网站，可以在其中浏览和下载图片。这些图片都是由 Unsplash 社区的摄影师上传的，可以免费用于个人和商业用途。', 'https://picsum.photos/', '随机图片', 0);
INSERT INTO "ToolOverviews" VALUES ('Ba08', 'B', 'a', 'Sapiens Character Builder', 'https://sapiens.ui8.net/favicon.ico', '超过 3000 种组合的角色插图生成器。可以调整插图角色的性别、动作、背景图等，搭配出各种不同的插图设计，最终下载为 SVG 或 PNG 格式。免费的，但需要注册帐号。需要电脑访问，不支持手机。', 'https://sapiens.ui8.net/', '插图生成器', 1);

INSERT INTO "ToolSubcategorys" VALUES ('B', 'b', '音频');

INSERT INTO "ToolOverviews" VALUES ('Bb01', 'B', 'b', '音乐魔石', 'https://yym4.com/img/favicon.png', '音乐魔石官网提供全网无损音乐、Mp3歌曲免费下载、MP3免费下载、WAV免费下载、音乐免费下载、mp3歌曲免费下载、mp3下载、WAV歌曲免费下载、音乐免费下载、网盘音乐下载、网络音乐排行、网络热门歌曲、非主流音乐、经典老歌、劲舞团歌曲、搞笑歌曲、儿童歌曲、网络歌曲等，收录了网上最新歌曲和流行音乐、网络歌曲、好听的歌、非主流音乐、经典老歌、搞笑歌曲、儿童歌曲、英文歌曲等,为广大音乐爱好者提供音乐交流及资源分享平台。', 'https://yym4.com/', '免费；网盘下载', 0);
INSERT INTO "ToolOverviews" VALUES ('Bb02', 'B', 'b', 'OpenYYY 开源云音乐', 'https://yym4.com/img/favicon.png', '本站提供云音乐格式批量在线转换，浏览器本地转换，无需上传，可将NCM批量在线转换为MP3, NCM批量在线转换为FLAC, QMC批量在线转换为MP3, UC批量在线转换为MP3, UC批量在线转换为FLAC, KWM批量在线转换为MP3, KWM批量在线转换为FLAC, XM批量在线转换为MP3, XM批量在线转换为WAV, XM批量在线转换为FLAC, XM批量在线转换为M4A, TM0批量在线转换为MP3, TM3批量在线转换为MP3, QMC3批量在线转换为MP3, QMC2批量在线转换为OGG, QMC0批量在线转换为MP3, QMCFLAC批量在线转换为FLAC, QMCOGG批量在线转换为OGG, TKM批量在线转换为M4A, BKCMP3批量在线转换为MP3, BKCM4A批量在线转换为M4A, BKCFLAC批量在线转换为FLAC, BKCWAV批量在线转换为WAV, BKCAPE批量在线转换为APE, BKCOGG批量在线转换为OGG, BKCWMA批量在线转换为WMA, MGGL批量在线转换为OGG, MFLAC批量在线转换为FLAC, MFLAC0批量在线转换为FLAC, MGG批量在线转换为OGG, MGG1批量在线转换为OGG, MGG0批量在线转换为OGG, 666C6163批量在线转换为FLAC, 6D7033批量在线转换为MP3, 6F6767批量在线转换为OGG, 6D3461批量在线转换为M4A, 776176批量在线转换为WAV, TM2批量在线转换为M4A, TM6批量在线转换为M4A, CACHE批量在线转换为MP3, VPR批量在线转换为MP3, KGM批量在线转换为MP3, KGMA批量在线转换为MP3，支持预览、下载等功能', 'https://openyyy.com/', '格式转换', 0);

INSERT INTO "ToolSubcategorys" VALUES ('B', 'c', '视频');

INSERT INTO "ToolOverviews" VALUES ('Bc01', 'B', 'c', 'cobalt', 'https://r2.lazyers.tools/logo/cobalt.png', 'Cobalt可以让你保存你喜欢的东西，而不需要广告、跟踪、付费墙或其他无用的东西。只需粘贴链接，你就可以嗨起来了！', 'https://cobalt.tools/', '无广告；视频下载', 1);
INSERT INTO "ToolOverviews" VALUES ('Bc02', 'B', 'c', 'TubeGet', 'https://www.gihosoft.com/wp-includes/images/w-logo-blue-white-bg.png', 'Gihosoft TubeGet是一款免费的YouTube视频下载软件。Gihosoft TubeGet可以下载包括YouTube在内的1万多个视频网站，还可以批量下载视频，同步下载字幕文件，支持转换各种流行格式。同时Gihosoft TubeGet还可以直接将下载的视频转换为MP3。新增手机管理功能，将视频传输到Android，IOS 等移动设备。', 'https://www.gihosoft.com/free-youtube-downloader.html', '视频下载；部分免费', 3);
INSERT INTO "ToolOverviews" VALUES ('Bc03', 'B', 'c', 'APP影院', 'https://cdn.wyteam.net/webapps/maccms/template/blueghost/img/favicon.ico', '提供最新最快的影视资讯和在线播放-免费电影-全网最全视频库-全网最全免费影院-免费影视-免费电视剧-免费影院', 'https://www.appmovie.link/', '在线收看', 0);
INSERT INTO "ToolOverviews" VALUES ('Bc04', 'B', 'c', '中国纪录片网', 'http://www.docuchina.cn/favicon.ico', '一个非常值得纪录片创作者和爱好者收藏的纪录片网站。', 'http://www.docuchina.cn/', '在线观看', 0);
INSERT INTO "ToolOverviews" VALUES ('Bc05', 'B', 'c', 'XSH云视频解析', 'https://video.xshyun.top/public/gw.png', '永久免费观看海量会员视频资源，支持各大视频平台在线解析。', 'https://so.xshyun.top/', '在线观看', 0);
INSERT INTO "ToolOverviews" VALUES ('Bc06', 'B', 'c', '爱幕', 'https://aimu.app/favicon.ico', '一个在线字幕编辑器。支持音频提取、双语字幕、字幕翻译、YouTube 视频与字幕下载等功能。数据的处理和缓存都在前端，免费使用，无需注册。', 'https://aimu.app/', '字幕编辑器', 0);
INSERT INTO "ToolOverviews" VALUES ('Bc07', 'B', 'c', 'VidHub', 'https://vidhub.icu/favicon.ico', 'VidHub提供免费观看最新电影,热播电视剧,高清无广告蓝光1080P画质在线播放,流畅秒播不卡顿!', 'https://vidhub.icu/', '在线观看', 0);

INSERT INTO "ToolSubcategorys" VALUES ('B', 'd', '地图');
INSERT INTO "ToolOverviews" VALUES ('Bd01', 'B', 'd', '多寻地图', 'https://bus.daibor.com/favicon.ico', '一款提供高铁和公交线路查询的工具，可以通过输入起点和终点，快速获取相关的交通信息。', 'https://bus.daibor.com/', '', 0);

INSERT INTO "ToolSubcategorys" VALUES ('B', 'e', '漫画');
INSERT INTO "ToolOverviews" VALUES ('Be01', 'B', 'e', 'GoDa漫画', 'https://godamh.com/assets/images/Logo.png', '一个提供丰富多样漫画阅读体验的网站，可以在这里找到各种类型的漫画，包括连载漫画、免费漫画、玄幻、言情、穿越、都市、仙侠、武侠等多种题材。', 'https://godamh.com/', '', 0);

INSERT INTO "ToolSubcategorys" VALUES ('B', 'f', '资源搜索');
INSERT INTO "ToolOverviews" VALUES ('Bf01', 'B', 'f', '雨花阁', 'https://www.iyuhuage.fun/favicon.ico', '雨花阁是一个专注于磁力资源搜索的网站。', 'https://www.iyuhuage.fun/', '', 0);

-- ----------------------------
-- PC工具
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('C', 'PC 工具');

INSERT INTO "ToolSubcategorys" VALUES ('C', 'a', '装机必备');

INSERT INTO "ToolOverviews" VALUES ('Ca01', 'C', 'a', 'Potplayer', 'https://t1.daumcdn.net/potplayer/main/img/favicon.ico', 'PotPlayer 可以说是当今 Windows 平台上功能最强大的多媒体播放器（之一？），无广告，不流氓，界面简洁，纯粹为播放而生！', 'https://potplayer.daum.net/?lang=zh_CN', '无广告；界面简洁；功能强大', 1);
INSERT INTO "ToolOverviews" VALUES ('Ca02', 'C', 'a', 'Geek Uninstaller', 'https://geekuninstaller.com/assets/images/icon_geek_32@2x.png', '最好的免费卸载程序。高效快速，小巧便携。100%免费。', 'https://geekuninstaller.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ca03', 'C', 'a', '7-Zip', 'https://www.7-zip.org/7ziplogo.png', '7-Zip 是一款功能强大且广受欢迎的解压缩软件，支持多种流行的压缩格式，能高效地压缩和解压缩文件，提供出色的压缩比。', 'https://www.7-zip.org/', '无广告', 0);
INSERT INTO "ToolOverviews" VALUES ('Ca04', 'C', 'a', 'Chrome 浏览器', 'https://www.google.cn/chrome/static/images/favicons/favicon-32x32.png', 'Chrome 是 Google 的官方网络浏览器，速度飞快，安全可靠，并且支持自定义。', 'https://www.google.cn/chrome/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ca05', 'C', 'a', 'Microsoft 365', 'https://res.cdn.office.net/officehub/images/content/images/favicon_copilot-4370172aa6.ico', 'Microsoft 365 Copilot 应用 (以前称为 Office) 可让你使用自己喜欢的应用在一个位置创建、共享和协作，这些应用现在包含 Copilot。', 'https://www.office.com/', '订阅服务', 0);
INSERT INTO "ToolOverviews" VALUES ('Ca06', 'C', 'a', 'Snipaste', 'https://www.snipaste.com/img/logo.svg', 'Snipaste‌是一个简单但功能强大的截图工具，它允许用户将截图贴回到屏幕上，并进行各种自定义操作。Snipaste的主要功能包括截图、贴图、图片编辑和标注等。', 'https://www.snipaste.com', '', 0);

INSERT INTO "ToolSubcategorys" VALUES ('C', 'b', '可能需要');

INSERT INTO "ToolOverviews" VALUES ('Cb01', 'C', 'b', 'FileUnzip', 'https://cn.fileunzip.com/favicon/favicon.ico', '一款免费的在线文件解压缩工具。可以通过简单的上传操作，轻松解压缩多种格式的压缩文件，如ZIP、RAR、TAR、TGZ和7Z等。', 'https://cn.fileunzip.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Cb02', 'C', 'b', 'SwapCode', 'https://swapco.de/logo.png', '一个提供虚拟邮箱服务的网站，可以通过该平台生成新的邮箱地址，使用这些地址进行注册或接收邮件，从而避免泄露真实邮箱信息。', 'https://swapco.de/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Cb03', 'C', 'b', 'Bananas Screen Sharing', 'https://getbananas.net/favicon.png', '一款跨平台的屏幕共享软件，无需注册或登录，只需生成一个独特的连接URL，即可与他人分享屏幕。支持多光标操作，允许多个用户同时在同一屏幕上进行互动。', 'https://getbananas.net/', '', 0);

-- ----------------------------
-- 软件开发
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('D', '软件开发');

INSERT INTO "ToolSubcategorys" VALUES ('D', 'a', '编程语言');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'b', '语言框架');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'c', '开发工具');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'd', '云计算服务');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'e', 'UI');
INSERT INTO "ToolSubcategorys" VALUES ('D', 'f', '开源项目');

INSERT INTO "ToolOverviews" VALUES ('Da01', 'D', 'a', 'HTML', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', 'HTML（超文本标记语言——HyperText Markup Language）是构成 Web 世界的一砖一瓦。它定义了网页内容的含义和结构。', 'https://developer.mozilla.org/zh-CN/docs/Web/HTML', '前端', 0);
INSERT INTO "ToolOverviews" VALUES ('Da02', 'D', 'a', 'CSS', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', '层叠样式表（Cascading Style Sheets，缩写为 CSS）是一种样式表语言，用来描述 HTML 或 XML（包括如 SVG、MathML 或 XHTML 之类的 XML 分支语言）文档的呈现方式。CSS 描述了在屏幕、纸质、音频等其他媒体上的元素应该如何被渲染的问题。', 'https://developer.mozilla.org/zh-CN/docs/Web/CSS', '前端', 0);
INSERT INTO "ToolOverviews" VALUES ('Da03', 'D', 'a', 'JavaScript', 'https://developer.mozilla.org/favicon-48x48.bc390275e955dacb2e65.png', 'JavaScript（JS）是一种具有函数优先特性的轻量级、解释型或者说即时编译型的编程语言。虽然作为 Web 页面中的脚本语言被人所熟知，但是它也被用到了很多非浏览器环境中，例如 Node.js、Apache CouchDB、Adobe Acrobat 等。进一步说，JavaScript 是一种基于原型、多范式、单线程的动态语言，并且支持面向对象、命令式和声明式（如函数式编程）风格。', 'https://developer.mozilla.org/zh-CN/docs/Web/JavaScript', '前端', 0);
INSERT INTO "ToolOverviews" VALUES ('Da04', 'D', 'a', 'PHP 编程之道', 'https://phptherightway.golaravel.com/images/favicon.png', 'PHP 是一种广泛使用的开源服务器端脚本语言，特别适合于 Web 开发并可嵌入 HTML 中使用。它支持多种数据库，并且与许多服务器兼容，是创建动态网页和应用程序的强大工具。', 'https://phptherightway.golaravel.com/', '后端', 0);

INSERT INTO "ToolOverviews" VALUES ('Db01', 'D', 'b', 'Vue.js', 'https://cn.vuejs.org/logo.svg', '渐进式的 JavaScript 框架。', 'https://cn.vuejs.org/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db02', 'D', 'b', 'Vue Router', 'https://router.vuejs.org/logo.png', 'Vue.js 的官方路由。', 'https://router.vuejs.org/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db03', 'D', 'b', 'Pinia', 'https://pinia.vuejs.org/logo.svg', '符合直觉的 Vue.js 状态管理库。', 'https://pinia.vuejs.org/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db04', 'D', 'b', 'Pinia 插件 Persistedstate', 'https://prazdevs.github.io/pinia-plugin-persistedstate/favicon.ico', '可配置的 Pinia 存储持久化。', 'https://prazdevs.github.io/pinia-plugin-persistedstate', 'Pinia 插件', 0);
INSERT INTO "ToolOverviews" VALUES ('Db05', 'D', 'b', 'Axios', 'https://www.axios-http.cn/img/favicon.ico', 'Axios 是一个基于 promise 的网络请求库，可以用于浏览器和 node.js。', 'https://www.axios-http.cn/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Db06', 'D', 'b', 'Element Plus', 'https://element-plus.org/images/element-plus-logo-small.svg', '基于 Vue 3，面向设计师和开发者的组件库。', 'https://element-plus.org/', '组件库', 0);
INSERT INTO "ToolOverviews" VALUES ('Db07', 'D', 'b', 'vue-clipboard2', '', 'vue-clipboard2 是一个基于 Vue.js 的剪贴板操作插件，允许开发者轻松实现文本复制到剪贴板的功能。它封装了原生的 Clipboard API，提供了简单易用的指令和方法。', 'https://vue-clipboard2.inndy.tw/', '剪贴板', 0);

INSERT INTO "ToolOverviews" VALUES ('Dc01', 'D', 'c', 'Git', 'https://git-scm.com/favicon.ico', 'Git（读音为/gɪt/）是一个开源的分布式版本控制系统，可以有效、高速地处理从很小到非常大的项目版本管理。', 'https://git-scm.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dc02', 'D', 'c', 'Typora', 'https://typora.io/img/icon_256x256.png', 'Typora中文版是一款好用极简免费的跨平台Markdown编辑器，软件使用这款软件能够帮助用户轻松将文本转换到HTML，软件从底层向上设计，软件支持markdown的标准语法，同时这款软件还支持动态预览功能，一键预览，让一切都变得如此干净、纯粹，是一款不可多得的优质markdown编辑器。', 'https://typora.io/', 'Markdown编辑器', 0);
INSERT INTO "ToolOverviews" VALUES ('Dc03', 'D', 'c', '英文字母大小写转换', 'https://www.iamwawa.cn/Public/img/favicon.png', '在线英文字母大小写转换器工具，能很方便的将英文字母全部转换为大写或者小写，或者将英文句子转换成首字母大写，支持英文标题大小写转换。', 'https://www.iamwawa.cn/daxiaoxie.html', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dc98', 'D', 'c', 'Ping检测', 'https://csstools.chinaz.com/favicon.ico', '通过该工具可以多个地点Ping服务器以检测服务器响应速度。', 'https://ping.chinaz.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dc99', 'D', 'c', '端口扫描', 'https://csstools.chinaz.com/favicon.ico', '通过该工具可以扫描常用的端口和指定的端口是否开放。', 'https://tool.chinaz.com/port/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Dd01', 'D', 'd', 'Vultr', 'https://r2.lazyers.tools/logo/Vultr.webp', 'Vultr 是一家全球性的云服务器提供商，用户可以根据需求选择不同的 CPU、内存、硬盘、流量和机房等配置，所有 VPS 都采用全 SSD 固态硬盘存储、支持多种操作系统、按小时计费随时换IP，提供简单便捷的快速部署功能。', 'https://my.vultr.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd02', 'D', 'd', '彩虹云', 'https://www.cccyun.net/favicon.ico', '彩虹云主机提供免备案CDN，免备案空间，全光纤网络，BGP智能多线，直连大陆ChinaNET骨干端口,资源存放在郑州、洛阳、洛杉矶、韩国、香港等多个数据中心,已实现所有主机/云服务器的SSD固态硬盘部署，硬盘读写能力提升5倍，彻底解决高并发问题，可满足高IO需求的数据库等在线业务。', 'https://www.cccyun.net/?invite=207160', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd03', 'D', 'd', 'Bluehost', 'https://www.cccyun.net/favicon.ico', 'Bluehost提供专业的美国主机、美国云虚拟主机、香港虚拟主机、美国服务器、香港服务器、VPS云主机等网站空间托管服务。Bluehost作为全球最受信赖的主机商品牌，托管了全球数百万的网站，是外贸建站的首选主机商。', 'https://www.bluehost.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd04', 'D', 'd', 'Hostinger', 'https://www.hostinger.com/favicon.ico', '选择您的网站虚拟主机解决方案, 打造完美网站！从共享主机和域名到VPS - 我们拥有您实现在线业务成功所需的一切。', 'https://www.hostinger.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd05', 'D', 'd', 'DigitalPlat Domain', 'https://r2.lazyers.tools/logo/DigitalPlatDomain.jpg', 'DigitalPlat Domain‌是一个提供免费域名注册和管理的平台，旨在为每个人提供一个数字身份。该平台允许用户免费注册独特的域名，并将其托管到自己喜欢的DNS提供商，如Cloudflare、FreeDNS by Afraid.org或Hostry。', 'https://dash.domain.digitalplat.org/', '免费；二级域名', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd06', 'D', 'd', 'GoDaddy', 'https://img6.wsimg.com/ux/favicon/favicon-32x32.png', 'GoDaddy CN专注于提供全球大型技术供应服务及云端产品,业务涵盖域名注册申请,域名查询,域名买卖交易,主机租聘,虚拟主机,商务主机,WordPress主机,VPS主机,专属服务器,外贸自助建站,企业cms建站,电邮营销等一站式服务.域名注册,主机租赁,企业建站请访问GoDaddy CN官网.', 'https://www.godaddy.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd07', 'D', 'd', 'SugarHosts', 'https://www.sugarhosts.com/templates/sh_christmas2016/favicon.ico', '域名搜索&注册，实时DNS服务。', 'https://www.sugarhosts.com/zh-cn/domains/domain-search', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Dd08', 'D', 'd', 'Cloudflare', 'https://dash.cloudflare.com/favicon.ico', 'Cloudflare 是一家提供 CDN（内容分发网络）、DDoS 防护、DNS 解析、网络安全加速 以及 云计算服务 的公司。它可以 提升网站性能、增强安全性、减少服务器压力，被广泛用于网站加速和网络防护。', 'https://dash.cloudflare.com/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('De01', 'D', 'e', 'Bootstrap 官方图标库', 'https://icons.bootcss.com/assets/img/favicons/favicon.ico', '包含 1800 多个图标的免费、高质量的开源图标库。你可以以任何方式使用它们，例如 SVG 矢量图、SVG sprite 或 web 字体形式。不管你是否使用 Bootstrap ，都可以使用本图标库。', 'https://icons.bootcss.com/', '图标库', 0);
INSERT INTO "ToolOverviews" VALUES ('De02', 'D', 'e', '阿里巴巴矢量图标库', 'https://img.alicdn.com/imgextra/i4/O1CN01XZe8pH1USpiUNT1QN_!!6000000002517-2-tps-114-114.png', 'iconfont-国内功能很强大且图标内容很丰富的矢量图标库，提供矢量图标下载、在线存储、格式转换等功能。阿里巴巴体验团队倾力打造，设计和前端开发的便捷工具', 'https://www.iconfont.cn/collections', '图标库', 0);
INSERT INTO "ToolOverviews" VALUES ('De03', 'D', 'e', 'Google Fonts', 'https://www.gstatic.com/images/icons/material/apps/fonts/1x/catalog/v5/favicon.svg', 'Google Fonts 是一个由谷歌提供的免费开源字体库，它允许设计师和开发者在网页和项目中轻松使用多样化的字体。通过简单的嵌入代码，用户可以实现网页字体的快速加载和美化，提升网站的设计品质和用户体验。', 'https://fonts.google.com/', '字体库', 0);
INSERT INTO "ToolOverviews" VALUES ('De04', 'D', 'e', '100font.com', 'https://www.100font.com/view/img/favicon.ico', '100font.com是一个专业免费商用字体下载网站。专注于收集整理商用免费字体、免费无版权可商用字体。免费字体下载、免费放心商用。', 'https://www.100font.com/', '字体库', 0);
INSERT INTO "ToolOverviews" VALUES ('De05', 'D', 'e', 'YouIcon', 'https://cn.youicons.com/icon/youicons.svg', '在 YouIcons 上探索数百万个高质量的矢量标志。 获取灵感、发现并与全球设计师联系的资源。', 'https://cn.youicons.com/', '矢量图标；徽标；插图', 0);

INSERT INTO "ToolOverviews" VALUES ('Df01', 'D', 'f', 'varia', 'https://github.githubassets.com/favicons/favicon.svg', '一款快速高效的下载管理器，支持常规下载、视频和种子文件的下载。', 'https://github.com/giantpinkrobots/varia', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Df02', 'D', 'f', 'Payload', 'https://github.githubassets.com/favicons/favicon.svg', 'Payload 是一个现代化的开源无头 CMS，专为开发者设计，提供高度灵活性和可定制性。它支持前后端分离，通过 REST 或 GraphQL API 提供内容，适合多种前端框架。Payload 具有强大的权限管理、丰富的字段类型和插件系统，基于 TypeScript 和 React，开发者友好且功能强大，适用于企业网站、电子商务、博客等多种场景。', 'https://github.com/payloadcms/payload', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Df03', 'D', 'f', 'Maybe', 'https://github.githubassets.com/favicons/favicon.svg', '个人财务记账系统。', 'https://github.com/maybe-finance/maybe', '', 0);

-- ----------------------------
-- 魔法上网
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('E', '魔法上网');

INSERT INTO "ToolSubcategorys" VALUES ('E', 'a', '流量购买');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'b', '出墙必看');
INSERT INTO "ToolSubcategorys" VALUES ('E', 'c', 'SMS');

INSERT INTO "ToolOverviews" VALUES ('Ea01', 'E', 'a', '灵魂云', 'https://linghunyun.com/favicon.ico', '使用灵魂云，可以实现魔法上网，全路线IPEC专线，支持iOS、Android、Windows、Mac全平台，且可同时使用，高速稳定，看油管刷推X无压力', 'https://linghunyun.com/#/register?code=hhld6ftW', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Ea02', 'E', 'a', 'Akkcloud', 'https://r2.lazyers.tools/logo/Akkcloud.ico', '全球节点分布，24H客服响应，全平台客户端。每月最低只需10元即可享受100G高速流量。', 'https://mirror2.akpnaca.com/auth/register?code=eGPuaC', '', 0);

-- https://qianghub.com/what-to-do-after-bypass-gfw/
INSERT INTO "ToolOverviews" VALUES ('Eb01', 'E', 'b', 'Google 系列服务', 'https://ssl.gstatic.com/ui/v1/icons/mail/rfr/gmail.ico', '包括谷歌搜索、谷歌邮箱、谷歌翻译等，使用它们会为你带来看不完的内容，通向互联网的任意一个角落。', 'https://www.google.com/?hl=zh_CN', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb02', 'E', 'b', '维基百科', 'https://zh.wikipedia.org/static/favicon/wikipedia.ico', '免费的多语言的网络百科全书，类似于中国的百度百科。特点是任何人都可以编辑维基百科中的任何文章及条目。目前是全球网络上最大的参考工具书， 你可以在这里找到任何你想要找到的信息。', 'https://zh.wikipedia.org/wiki/Wikipedia:%E9%A6%96%E9%A1%B5', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb03', 'E', 'b', 'Facebook', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAgVBMVEUAAAAQcP8IZf8IZ/8JZv8HZf8IZv8IZv8IaP8JZ/8HZv8IZv8FZf8YcP9FjP+TvP/g7P/////R4/9Vlf8QYP+Es/9kn/8IZv8nef8JZf8AYP/v9f/Q4v/B2P9GjP8HZv+yz//Q4/83g/8HZv/g6/+Dsv8HZf/n7//////////e6//ZLyHjAAAAK3RSTlMAEGCfz+//XyCQj98w/////////xD//6D/kBD/////7////8///5Cgz+/vONkvXQAAAPJJREFUeAF9kkUCwzAMBGVSGMrM3P//rxBaB+e6s0YREFJpw2y0cgS1cT3DQLmNWPjcwK/XA24RWIuEdg4j7OtHUX0NYedxko5+jCeZMc0En8FsVDDHSd1WDoFdIlogX46awopozWA+ythsd7s9ZxymJBkcs3wcMZC0YHDKhDNbKLowuGYC21zINIWUbQ7EwwJT7YogqgTTKaTY4tIp7HDIRadwwzVlKVyv11HG9cekFBxam8FbTInuQ4LCd3cL2Uzd+4UV/VkHfUIgMLRdQuBi7JsCxh5rQEAfrO9NYSWojruwBOOhDoR8PF+j0fuipNX+AmbCIviMIiwCAAAAAElFTkSuQmCC', '国外最大的社交网站，用户除了文字消息之外，还可发送图片、视频、文档、贴图和声音媒体消息给其他用户，以及透过集成的地图功能分享用户的所在位置。', 'https://www.facebook.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb04', 'E', 'b', 'X(原名Twitter)', 'https://r2.lazyers.tools/logo/X.png', '推特是除 Facebook 外最大的社交博客网站，它是一家美国社交网络及微博客服务的公司，致力于服务公众对话，美国总统都在上面玩，值得探索。', 'https://twitter.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb05', 'E', 'b', 'Telegram', 'https://r2.lazyers.tools/logo/Telegram.ico', '电报（tg）是一个没有审查的应用，并且完全可以匿名，但是使用起来就像微信一样简单而且强大，里面还有很多国人最喜欢加入的群组、频道等。可以创建没有会员上限的群组，许多神秘的群组也值得探索。', 'https://telegram.org/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb06', 'E', 'b', 'Spotify', 'https://r2.lazyers.tools/logo/Spotify.png', 'Spotify 有大量的音乐内容，不仅免费而且曲库众多，音质有保障，甚至国内的小众音乐都很全。它为所有主要平台提供应用程序，包括 iOS 、 Android 和您首选的 Web 浏览器。', 'https://open.spotify.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb07', 'E', 'b', 'YouTube', 'https://r2.lazyers.tools/logo/YouTube.png', '国人称之为油管，里面海量的内容可能让你眼花缭乱，坐拥 10 亿用户，类似国内的 B 站，有大量的免费电影可供选择。', 'https://www.youtube.com/', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Eb08', 'E', 'b', 'Netflix', 'https://r2.lazyers.tools/logo/Netflix.ico', '国人称之为网飞或奈飞，是世界最大的会员制流媒体公司，提供了所有流媒体中最“高质量”的电视节目和电影，无论是内容生产还是用户体验都是一级棒。', 'https://www.netflix.com/', '', 0);

INSERT INTO "ToolOverviews" VALUES ('Ec01', 'E', 'c', '有信云短信', 'https://www.zusms.com/images/logo.png', '短信接收,无敌云短信,信码通,有信云短信,超级云短信,本平台可以在线接收短信，接收短信验证码，显示迅速，比国外类似短信验证码接收更快捷。在线短信接收平台,免费验证码接收平台,虚拟手机号接收短信app,哪个短信平台比较好,代收手机短信验证码,虚拟手机号码接收短信,国外短信接收平台,手机短信验证码,手机验证码平台,接码平台,短信验证码,验证码平台,云验证码平台,短信验证码是多少,手机短信验证码接收系统,验证码短信平台,虚拟手机号验证码平台,手机收不到验证码,手机验证码接收软件,免费的临时手机号软件,手机获取验证码收费吗,虚拟手机验证码生成器,免费的临时手机号软件,网站验证码短信平台,接收手机验证码平台,发短信最便宜,手机收验证码服务,网站注册手机验证码，接码，接码平台，在线接码', 'https://www.zusms.com/', '免费', 0);
INSERT INTO "ToolOverviews" VALUES ('Ec02', 'E', 'c', 'SMS-Activate', 'https://r2.lazyers.tools/logo/SMS-Activate.png', '使用SMS-Activate的虚拟号码来在线接受短信。可以在600个多服务注册的一次性号码。短信即刻送到给你，低价', 'https://sms-activate.guru/', '收费', 0);

-- ----------------------------
-- 网络资源
-- ----------------------------
INSERT INTO "ToolCategorys" VALUES ('Z', '网盘资源');

INSERT INTO "ToolSubcategorys" VALUES ('Z', 'a', '默认');

INSERT INTO "ToolOverviews" VALUES ('Za01', 'Z', 'a', '被数学选中的人', 'https://r2.lazyers.tools/logo/被数学选中的人.jpg', '本片从数学与人的关系出发，介绍数学作为最基础学科对于人类文明进程的意义。通过现实生活中数学的体现，如计时、建筑、音乐、天气预报等，介绍数学的应用。同时，通过对数学家的访谈，了解这些“被数学选中的人”是如何看待数学、看待科学演进的。', 'https://www.alipan.com/s/qH8RDjmu1uJ', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Za02', 'Z', 'a', '首届大学生春晚2025', 'https://r2.lazyers.tools/logo/首届大学生春晚2025.jpg', '大学老师与大专、二本、一本、211、985大学生的整活儿！', 'https://pan.quark.cn/s/9ae63deaf8ff', '', 0);
INSERT INTO "ToolOverviews" VALUES ('Za03', 'Z', 'a', '清华大学：DeepSeek从入门到精通', 'https://r2.lazyers.tools/logo/%E6%B8%85%E5%8D%8E%E5%A4%A7%E5%AD%A6%EF%BC%9ADeepSeek%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E7%B2%BE%E9%80%9A.jpg', '《DeepSeek从入门到精通2025》是由清华大学新闻与传播学院新媒体研究中心元宇宙文化实验室的余梦珑博士后及其团队撰写。文档的核心内容围绕DeepSeek的技术特点、应用场景、使用方法以及如何通过提示语设计提升AI使用效率等方面展开，帮助用户从入门到精通DeepSeek的使用。', 'https://r2.lazyers.tools/resource/%E6%B8%85%E5%8D%8E%E5%A4%A7%E5%AD%A6%EF%BC%9ADeepSeek%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E7%B2%BE%E9%80%9A.pdf', '', 0);



PRAGMA foreign_keys = true;
