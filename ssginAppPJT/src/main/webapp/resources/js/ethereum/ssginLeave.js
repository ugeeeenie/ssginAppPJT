Web3 = require('web3');
web3 = new Web3();
web3.setProvider(new Web3.providers.HttpProvider('http://10.149.179.196:8545'));

/* 한조 address, pwd
 * var adminAddr = "0x521536ad50dd3a22fe6beb0ca0f8ff30a5161eee";
 * var adminPwd = "khc3121"; */

/* 지은 address, pwd */
var adminAddr = "0xa3cf1b84ee70fcf4db335e3e7d8f0fd3aa5045ca";
var adminPwd = "1111";

var abi = JSON.parse('[{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"memberJoin","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"string"}],"name":"leave","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"memberLeave","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"string"},{"name":"userPwd","type":"string"}],"name":"join","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"userPwd","type":"string"}],"name":"makePwd","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"id","type":"bytes32"}],"name":"existID","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"ssginAuth","outputs":[{"name":"id","type":"bytes32"},{"name":"pwd","type":"bytes32"},{"name":"flag","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"},{"name":"userPwd","type":"string"}],"name":"ssginWithID","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"makeId","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]');
var ssginContract = web3.eth.contract(abi);
/* 한조 contract address
 * var contractInstance = ssginContract.at('0x658bd5e8b2465053e02c873ca3934230c879631d');
 */

/* 지은 contract address */
var contractInstance = ssginContract.at('0x76d1c4feddea6cd7c864a8de0e810cf1ef29269f');

$('#leaveBtn').click(function(){
	console.log("leave");
	
	var userId = $('#name').val();
	var birth = $('#birth').val();
	var gender = $('#gender').val();
	var phone = $('#phone').val();
	console.log(userId, birth, gender, phone);

	var id = userId + birth + gender + phone;
	console.log(id);
	
	contractInstance.memberLeave.call(id, function(e1, result){
		if(!e1){
			if(result == "leavePossible"){
				console.log(result);
				contractInstance.leave(id, {from: adminAddr}, function(e2){
					if(!e2){
						alert("탈퇴 성공");
						location.href = "/intro.app";
					}else{
						alert("e2 : " + e2);
					}
				});
			}
			
			if(result == "noUser"){
				console.log(result);
				alert("존재하지 않는 사용자입니다.");
			}
		}
		
		else{
			alert("e1 : " + e1);
		}
	});
});
