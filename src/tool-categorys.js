/**
 * 工具主分类接口
 */
export default async (request, env) => {
	const { method } = request;

	if (method === "GET") {
		const { results } = await env.DB.prepare(
			"SELECT * FROM ToolCategorys",
		)
			.all();

		return new Response(JSON.stringify(results), {
			headers: {
				'Content-Type': 'application/json'
			},
		});
	}
};
