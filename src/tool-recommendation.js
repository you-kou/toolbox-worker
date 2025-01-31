export const getToolRecommendations = async (env) => {
	const { results } = await env.DB.prepare(
		"SELECT t2.* " +
		"FROM ToolRecommendations t1 " +
		"JOIN ToolOverviews t2 " +
		"ON t1.ToolId = t2.ToolId " +
		"ORDER BY CreateTime DESC " +
		"LIMIT 3",
	)
		.all();
	return results;
}
