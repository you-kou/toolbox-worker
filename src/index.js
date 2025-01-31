/**
 * toolbox worker
 */

import handleToolCategorysRequest from './tool-category';
import { handleToolOverviewsRequest } from './tool-overview';

export default {
	async fetch(request, env, ctx) {
		const { pathname } = new URL(request.url);

		/**
		 * 工具主分类接口
		 */
		if (pathname === "/homepage") {
			return await handleToolCategorysRequest(request, env);
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
