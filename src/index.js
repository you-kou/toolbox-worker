/**
 * toolbox worker
 */

import handleHotSearchRequest from './hot-search';
import handleToolCategorysRequest from './tool-category';
import handleToolSubcategorysRequest from './tool-subcategory';
import handleToolOverviewsRequest from './tool-overview';

export default {
	async fetch(request, env, ctx) {
		const { pathname } = new URL(request.url);

		/**
		 * 各大网站热搜
		 */
		if (pathname === "/hot-searchs") {
			return await handleHotSearchRequest(request, env);
		}

		/**
		 * 工具主分类接口
		 */
		if (pathname === "/tool-categorys") {
			return await handleToolCategorysRequest(request, env);
		}

		/**
		 * 工具子分类接口
		 */
		if (pathname === "/tool-subcategorys") {
			return await handleToolSubcategorysRequest(request, env);
		}

		/**
		 * 工具概述
		 */
		if (pathname === "/tool-overviews") {
			return await handleToolOverviewsRequest(request, env);
		}

		return new Response("Hello world!");
	},
};
