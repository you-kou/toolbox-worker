/**
 * 获取各平台热搜
 */
import * as cheerio from 'cheerio';

const map = new Map([
	["百度热搜", "https://top.baidu.com/board?tab=realtime"],
	["头条热榜", "https://www.toutiao.com/hot-event/hot-board/?origin=toutiao_pc"]
])

export default async (request, env) => {
	const { method } = request;

	if (method === "GET") {
		const result = [];
		const params = new URL(request.url).searchParams;
		const platform = params.get("platform");

		if (platform === '百度热搜') {
			await handleBaidu(result);
		} else if (platform === '头条热榜') {
			await handleToutiao(result);
		}

		return new Response(JSON.stringify(result), {
			headers: {
				'Content-Type': 'application/json'
			},
		});
	}
};

/**
 * 百度热搜
 */
const handleBaidu = async (result) => {
	const response = await fetch(map.get("百度热搜"));
	const htmlText = await response.text();

	const $ = cheerio.load(htmlText);

	const items = $('[class^="category-wrap"]').get();
	items.forEach((item, i) => {
		const $item = $(item);
		result.push({
			title: $item.find('.c-single-text-ellipsis').first().text().trim(),
			link: $item.find('[class^="content_"] > a').first().attr('href'),
			hotIndex: '热搜指数：' + $item.find('[class^="hot-index_"]').first().text().trim()
		});
	});
}

/**
 * 头条热榜
 */
const handleToutiao = async (result) => {
	const response = await fetch(map.get("头条热榜"));
	const json = await response.json();

	json.data.forEach((item, i) => {
		result.push({
			title: item.Title,
			link: item.Url,
			hotIndex: '热搜指数：' + item.HotValue
		})
	});
}
