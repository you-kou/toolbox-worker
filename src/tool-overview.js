/**
 * 工具概述接口
 */
export default async (request, env) => {
	const { method } = request;

	if (method === "GET") {

		const params = new URL(request.url).searchParams;
		const categoryId = params.get("categoryId");
		const subcategoryId = params.get("subcategoryId");

		let stmt;
		if (categoryId && subcategoryId) {
			stmt = env.DB.prepare(
				"SELECT t1.*, t2.CategoryName FROM ToolOverviews t1" +
				" JOIN ToolCategorys t2 ON t1.CategoryId = t2.CategoryId" +
				" WHERE t1.CategoryId = ? AND t1.SubcategoryId = ?",
			)
				.bind(categoryId, subcategoryId);
		} else {
			stmt = env.DB.prepare(
				"SELECT t1.*, t2.CategoryName FROM ToolOverviews t1" +
				" JOIN ToolCategorys t2 ON t1.CategoryId = t2.CategoryId" +
				" WHERE t1.SubcategoryId = 'a'",
			);
		}

		const { results } = await stmt.all();

		return new Response(JSON.stringify(results), {
			headers: {
				'Content-Type': 'application/json'
			},
		});
	}
};
