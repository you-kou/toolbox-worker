/**
 * Welcome to Cloudflare Workers! This is your first worker.
 *
 * - Run `npm run dev` in your terminal to start a development server
 * - Open a browser tab at http://localhost:8787/ to see your worker in action
 * - Run `npm run deploy` to publish your worker
 *
 * Learn more at https://developers.cloudflare.com/workers/
 */

import { commonHeaders } from './util';
import handleToolCategorysRequest from './tool-categorys';
import handleToolSubcategorysRequest from './tool-subcategorys';
import handleToolOverviewsRequest from './tool-overviews';

export default {
	async fetch(request, env, ctx) {
		const { method } = request;
		const { pathname } = new URL(request.url);

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
