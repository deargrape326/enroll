var path = getRootPath()

var Enrollee = {
	create : function() {
		var enrollee = {};
		enrollee.name = "";
		enrollee.province = "";
		enrollee.city = "";
		enrollee.county = "";
		enrollee.town = "";
		enrollee.village = "";
		enrollee.address = "";
		enrollee.tel = "";
		enrollee.school = "";
		return enrollee;
	}
};

$(function() {
	initTip();
	$("input").val('');
	$('#registerInfo').attr('disabled','disabled');
	
	$("#registerInfo").click(function() {
		var enrollee = Enrollee.create();
		enrollee.name = $("#inputName").val();
		enrollee.province = $("#provinceSelect").find("option:selected").text();
		enrollee.city = $("#citySelect").find("option:selected").text();
		enrollee.county = $("#countySelect").find("option:selected").text();
		enrollee.town = $("#townSelect").find("option:selected").text();
		enrollee.village = $("#villageSelect").find("option:selected").text();
		enrollee.address = $("#inputAddress").val();
		enrollee.tel = $("#inputTel").val();
		enrollee.school = $("#inputSchool").val();
		$.ajax({
			url : path + "/enrollee/add",
			type : "post",
			async : true,
			data : {
				name : enrollee.name,
				province : enrollee.province,
				city : enrollee.city,
				county : enrollee.county,
				town : enrollee.town,
				village : enrollee.village,
				address : enrollee.address,
				tel : enrollee.tel,
				school : enrollee.school
			},
			success : function(data) {
				processSuccess(data);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				
			}
		})
	})
	

	$("#inputName").bind('input propertychange blur', function() {
		if ($(this).val().trim() == '') {
			$("#validateName").text("* 不能为空");
		} else {
			$("#validateName").text("*");
		}
		validataEnrollee();
	})

	$("#provinceSelect").change(function() {
		if ($(this).val() == '') {
			$("#validateProvince").text("* 不能为空");
		} else {
			$("#validateProvince").text("*");
		}
		validataEnrollee();
	})
	
	$("#citySelect").change(function() {
		if ($(this).val() == '') {
			$("#validateCity").text("* 不能为空");
		} else {
			$("#validateCity").text("*");
		}
		validataEnrollee();
	})
		
	$("#countySelect").change(function() {
		if ($(this).val() == '') {
			$("#validateCounty").text("* 不能为空");
		} else {
			$("#validateCounty").text("*");
		}
		validataEnrollee();
	})
	
	$("#inputAddress").bind('input propertychange blur', function() {
		if ($(this).val().trim() == '') {
			$("#validateAddress").text("* 不能为空");
		} else {
			$("#validateAddress").text("*");
		}
		validataEnrollee();
	})
	

	$("#inputTel").bind('input propertychange blur', function() {
		if ($(this).val().trim() == '') {
			$("#validateTel").text("* 不能为空");
		} else if (!checkTelNum($(this).val().trim())) {
			$("#validateTel").text("* 请输入正确的手机号码");
		} else {
			$("#validateTel").text("*");
		}
		validataEnrollee();
	})
	
	$("#inputSchool").bind('input propertychange blur', function() {
		if ($(this).val().trim() == '') {
			$("#validateSchool").text("* 不能为空");
		} else {
			$("#validateSchool").text("*");
		}
		validataEnrollee();
	})
})

function processSuccess(data) {
	var code = data.code;
	if (code == 0) {
		alert(1);
		ShowSuccess("登记成功");
		$("input").val('');
		initProvinceSelect();
		window.location.href = path + "/redirect/jsp?to=" + "main";
	}
}

function validataEnrollee() {
	var name = $("#inputName").val();
	var province = $("#provinceSelect").val();
	var city = $("#citySelect").val();
	var county = $("#countySelect").val();
	var address = $("#inputAddress").val();
	var tel = $("#inputTel").val();
	var school = $("#inputSchool").val();
	if (name.trim() == '' || province == '' || city == '' || county == ''
			|| address.trim() == '' || tel.trim() == '' || school.trim() == '') {
		$("#registerInfo").attr('disabled', 'disabled');
	} else {
		$("#registerInfo").removeAttr('disabled');
	}
}

function checkTelNum(tel){
	if((/^1[34578]\d{9}$/.test(tel))){ 
        return true; 
    } else {
    	return false;
    }
}

function initTip(){
	var $tip = $('#tip');
	if ($tip.length == 0) {
		$tip = $('<span id="tip" style="font-size:18px;font-weight:bold;position:absolute;top:20px;left:80%;z-index:9999;min-width:300px;text-align:left;"></span>');
		$('body').append($tip);
	}
	$tip.stop(true).attr('class', 'alert alert-info').text("*所在地的乡镇和村可以不用填写，请在住址里面补充尽可能完整的地址").css('margin-left', -$tip.outerWidth() / 2)
}