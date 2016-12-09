var root = window.location.href;
var baseOption = "<option value=''>请选择...</option>";

$(function() {
	var type = 0;
	setLocation(type);

	$("select").unbind("change").change(function() {
		var parent_id = $(this).find("option:selected").val();
		var type = -1;
		switch ($(this).attr("id")) {
			case "provinceSelect" :
				type = 1;
				break;
			case "citySelect" :
				type = 2;
				break;
			case "countySelect" :
				type = 3;
				break;
			case "townSelect" :
				type = 4
			default :
				break;
		}
		setLocation(type, parent_id);
	})
})

function setLocation(type, parent_id) {
	if(type > -1 && type < 5){
		$.ajax({
			url : root + "address/queryLocation",
			type : "post",
			async : true,
			data : {
				type : type,
				parent_id : parent_id
			},
			success : function(data) {
				var options = setData(data);
				setOptions(options, type);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(XMLHttpRequest.responseText);
			}
		})
	}
}

function setData(data) {
	var data = eval(data);
	var result = data.result;
	var options = "";
	for (var i = 0; i < result.length; i++) {
		var location = result[i];
		options += '<option value="' + location.id + '">' + location.name
				+ '</option>';
	}
	return options;
}

function setOptions(options, type) {
	switch (type) {
		case 0 :
			setProvinceOptions(options);
			break;
		case 1 :
			setCityOptions(options);
			break;
		case 2 :
			setCountyOptions(options);
			break;
		case 3 :
			setTownOptions(options);
			break;
		case 4 :
			setVillageOptions(options);
			break;
		default :
			break;
	}
}

function setProvinceOptions(options) {
	initProvinceSelect();
	$("#provinceSelect").append(options);
}

function setCityOptions(options) {
	initCitySelect();
	$("#citySelect").append(options);
}

function setCountyOptions(options) {
	initCounty();
	$("#countySelect").append(options);
}

function setTownOptions(options) {
	initTown();
	$("#townSelect").append(options);
}

function setVillageOptions(options) {
	initVillage();
	$("#villageSelect").append(options);
}

function initProvinceSelect() {
	initCitySelect();
	$("#provinceSelect").empty();
	$("#provinceSelect").append(baseOption);
}

function initCitySelect() {
	initCounty();
	$("#citySelect").empty();
	$("#citySelect").append(baseOption);
}

function initCounty() {
	initTown();
	$("#countySelect").empty();
	$("#countySelect").append(baseOption);
}

function initTown() {
	initVillage();
	$("#townSelect").empty();
	$("#townSelect").append(baseOption);
}

function initVillage() {
	$("#villageSelect").empty();
	$("#villageSelect").append(baseOption);
}