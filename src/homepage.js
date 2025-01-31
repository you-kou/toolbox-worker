import { getToolRecommendations } from './tool-recommendation';

export const handleHomepageRequest = async (env) => {
	const tools = await env.DB.prepare(
		"SELECT t1.CategoryName, t2.SubcategoryName, t3.* " +
		"FROM ToolCategorys t1 " +
		"JOIN ToolSubcategorys t2 " +
		"ON t1.CategoryId = t2.CategoryId " +
		"JOIN ToolOverviews t3 " +
		"ON t2.CategoryId = t3.CategoryId " +
		"AND t2.SubcategoryId = t3.SubcategoryId " +
		"WHERE t2.SubcategoryId = 'a'",
	)
		.all().results;

	const recommendations = await getToolRecommendations(env);

	const result = {
		tools,
		recommendations
	}

	return new Response(JSON.stringify(result), {
		headers: {
			'Content-Type': 'application/json'
		},
	});
}
