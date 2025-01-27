/**
 * 工具子分类接口
 */
export default async (request, env) => {
	const { method } = request;
	const categoryId = new URL(request.url).searchParams.get("categoryId");

	if (method === "GET") {
		const { results } = await env.DB.prepare(
			"SELECT * FROM ToolSubcategorys",
		)
			.all();

		return new Response(JSON.stringify(results), {
			headers: {
				'Content-Type': 'application/json'
			},
		});
	}
};
