export const handleHomepageRequest = async (env) => {
	const tools = await getTools(env);
	const recommendations = await getToolRecommendations(env);

	const result = {
		tools,
		recommendations
	}

	return Response.json(result);
}

const getTools = async (env) => {
	const { results } = await env.DB.prepare(
		"SELECT t1.CategoryName, t2.SubcategoryName, t3.* " +
		"FROM ToolCategorys t1 " +
		"JOIN ToolSubcategorys t2 " +
		"ON t1.CategoryId = t2.CategoryId " +
		"JOIN ToolOverviews t3 " +
		"ON t2.CategoryId = t3.CategoryId " +
		"AND t2.SubcategoryId = t3.SubcategoryId " +
		"WHERE t2.SubcategoryId = 'a'",
	)
		.all();
	return results;
}

const getToolRecommendations = async (env) => {
	const { results } = await env.DB.prepare(
		"SELECT t3.CategoryName, t4.SubcategoryName, t2.* " +
		"FROM ToolRecommendations t1 " +
		"JOIN ToolOverviews t2 " +
		"ON t1.ToolId = t2.ToolId " +
		"JOIN ToolCategorys t3 " +
		"ON t2.CategoryId = t3.CategoryId " +
		"JOIN ToolSubcategorys t4 " +
		"ON t2.CategoryId = t4.CategoryId " +
		"AND t2.SubcategoryId = t4.SubcategoryId " +
		"ORDER BY CreateTime DESC " +
		"LIMIT 3",
	)
		.all();
	return results;
}
