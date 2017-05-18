//tip是提示信息，type:'success'是成功信息，'danger'是失败信息,'info'是普通信息
function ShowTip(tip, type) {
	var $tip = $('#tip');
	if ($tip.length == 0) {
		$tip = $('<span id="tip" style="font-size:18px;font-weight:bold;position:absolute;top:20px;left:80%;z-index:9999;min-width:300px;text-align:left;"></span>');
		$('body').append($tip);
	}
	$tip.stop(true).attr('class', 'alert alert-' + type).text(tip).css('margin-left', -$tip.outerWidth() / 2).fadeIn("fast").delay(1500).fadeOut(500);
}

function ShowMsg(msg) {
	ShowTip(msg, 'info');
}

function ShowSuccess(msg) {
	ShowTip(msg, 'success');
}

function ShowFailure(msg) {
	ShowTip(msg, 'danger');
}

function ShowWarn(msg, $focus, clear) {
	ShowTip(msg, 'warning');
	if ($focus)
		$focus.focus();
	if (clear)
		$focus.val('');
	return false;
}

/**
 * 获取根目录
 * 
 * @returns 根目录
 */
function getRootPath() {
//	val host = window.location.host;
//	// 获取当前网址，如： http://localhost:8088/test/test.jsp
//	var curPath = window.document.location.href;
//	// 获取主机地址之后的目录，如： test/test.jsp
//	var pathName = window.document.location.pathname;
//	var pos = curPath.indexOf(pathName);
//	// 获取主机地址，如： http://localhost:8088
//	var localhostPaht = curPath.substring(0, pos);
//	// 获取带"/"的项目名，如：/test
//	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
//	return (localhostPaht + projectName);
	return window.location.hostname
}