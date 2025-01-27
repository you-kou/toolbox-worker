// const corsHeaders = {
// 	"Access-Control-Allow-Origin": "*",
// 	"Access-Control-Allow-Methods": "GET,HEAD,POST,OPTIONS",
// 	"Access-Control-Max-Age": "86400",
// 	"Access-Control-Allow-Headers": request.headers.get(
// 		"Access-Control-Request-Headers",
// 	),
// };

export const commonHeaders = (request) => {
	return {
		// "Access-Control-Allow-Origin": "*",
		// "Access-Control-Allow-Methods": "GET,HEAD,POST,OPTIONS",
		// "Access-Control-Max-Age": "86400",
		// "Access-Control-Allow-Headers": request.headers.get(
		// 	"Access-Control-Request-Headers",
		// ),
		'Content-Type': 'application/json'
	}
}
