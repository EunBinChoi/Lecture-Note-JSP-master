function inputCheck() {
	// 乞窮 脊径 汽戚斗亜 脊径閤焼醤幻 噺据亜脊 亜管
	if (document.regForm.id.value == "") {
		alert("焼戚巨研 脊径背 爽室推");
		document.regForm.id.focus();
		return;
	}

	if (document.regForm.pwd.value == "") {
		alert("搾腔腰硲研 脊径背 爽室推");
		document.regForm.pwd.focus();
		return;
	}
	if (document.regForm.repwd.value == "") {
		alert("搾腔腰硲研 脊径背 爽室推");
		document.regForm.repwd.focus();
		return;
	}
	if (document.regForm.name.value == "") {
		alert("戚硯聖 脊径背 爽室推");
		document.regForm.name.focus();
		return;
	}
	if (document.regForm.birthday.value == "") {
		alert("持鰍杉析聖 脊径背 爽室推");
		document.regForm.birthday.focus();
		return;
	}
	if (document.regForm.email.value == "") {
		alert("戚五析聖 脊径背 爽室推");
		document.regForm.email.focus();
		return;
	}

	// 搾腔腰硲 掩戚 (8 ~ 16) 薦廃
	if (document.regForm.pwd.value.length < 8
		|| document.regForm.pwd.value.length > 16) {
		alert("搾腔腰硲税 掩戚 8 ~ 16 紫戚稽 脊径背爽室推!");
		document.regForm.pwd.focus();
		return;
	}

	// 搾腔腰硲人 搾腔腰硲 仙溌昔 葵精 旭精走 溌昔
	if (document.regForm.pwd.value != document.regForm.repwd.value) {
		alert("搾腔腰硲亜 析帖馬走 省柔艦陥");
		document.regForm.repwd.focus();
		return;
	}

	// "けいしけしけいし 1991-12-25" "1999-12-12"
	// 持鰍杉析 莫縦 溌昔 (舛鋭妊薄縦 戚遂)
	const reg_birth = /\d{4}-\d{2}-\d{2}/;
	if (document.regForm.birthday.value.search(reg_birth) == -1) {
		alert("持鰍杉析 莫縦戚 限走 省柔艦陥!");
		document.regForm.birthday.focus();
		return;
	}

	// 戚五析 莫縦 溌昔 (舛鋭妊薄縦 戚遂)
	const reg_email = /[A-Za-z0-9\-\.]+\@[A-Za-z0-9\-\.]+(\.[A-Za-z0-9]{2,3}){1,2}/;
	if (document.regForm.email.value.search(reg_email) == -1) {
		alert("戚五析 莫縦戚 限走 省柔艦陥!");
		document.regForm.email.focus();
		return;
	}

	// 
	document.regForm.submit();

}
//