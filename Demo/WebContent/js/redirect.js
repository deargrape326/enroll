/**
 * 界面跳转
 */
var path = getRootPath(); // 项目根目录

$(function() {
	$("#main").click(function() {
		redirectTo("main");
	})
	
	$("#contact").click(function() {
		redirectTo("reg");
	})
	
	$("#department").click(function() {
		redirectTo("department");
	})
	
	$("#job").click(function() {
		redirectTo("job");
	})
	
})

function redirectTo(to){
	window.location.href = "/redirect/jsp?to=" + to;
}