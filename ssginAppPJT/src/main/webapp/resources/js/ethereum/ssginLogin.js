var ip = $('#ip').val();
	"http://" + $('#ip').val() + ":8545";

Web3 = require('web3');
web3 = new Web3();
web3.setProvider(new Web3.providers.HttpProvider("http://" + ip + ":8545")); // 이거 localhost 대신 IP로 하면 안드로이드에서 트랜잭션 가능

var abi = JSON.parse('[{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"joinPossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"existID","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"memberJoin","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"ssginAuth","outputs":[{"name":"id","type":"bytes32"},{"name":"pwd","type":"bytes32"},{"name":"flag","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"ssginWithID","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"}],"name":"memberLeave","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"idList","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"leavePossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]');
var ssginContract = web3.eth.contract(abi);

/* 한조 address, pwd*/
/* var adminAddr = "0x521536ad50dd3a22fe6beb0ca0f8ff30a5161eee";
var adminPwd = "khc3121";  */

/* 지은 address, pwd */
var adminAddr = "0xa3cf1b84ee70fcf4db335e3e7d8f0fd3aa5045ca";
var adminPwd = "1111";

/* 지은 contract address */
//var contractInstance = ssginContract.at('0x76d1c4feddea6cd7c864a8de0e810cf1ef29269f'); // 이건 ssgin2.sol => 이거말고XXX
var contractInstance = ssginContract.at('0xf3c80a68d305534077a1bbc8889ad62539f5c983');

/*var userId = $('#name').val();
var birth = $('#birth').val();
var gender = $('#gender').val();
var phone = $('#phone').val();
console.log(userId, birth, gender, phone);

var id = userId + birth + gender + phone;*/

function getPassNum(phone) {
    $('#phoneNum').val(phone);
}

$('#loginBtn').click(function(){
	console.log("login");
	
	var id = $('#hash').val();
	console.log(id);
	
	if($('#pwd6').val() == ""){
		alert("비밀번호 6자리를 입력해주세요.");
		return;
	}
	
	var pwd = $('#pwd1').val() + $('#pwd2').val() + $('#pwd3').val()
			+ $('#pwd4').val() + $('#pwd5').val() + $('#pwd6').val();
	$('#pwd').val(pwd);
	alert("pwd : " + pwd);
	
	var originPwd = $('#pwd').val();
	var newPwd = originPwd.substring(0,1) + "s"
				+ originPwd.substring(1,2) + "s"
				+ originPwd.substring(2,3) + "g"
				+ originPwd.substring(3,4) + "i"
				+ originPwd.substring(4,5) + "n"
				+ originPwd.substring(5);
	
	var pwd = web3.sha3(newPwd);
	console.log(pwd);
	
	contractInstance.ssginWithID.call(id, pwd, function(e1, result){
		console.log("ssginWidthID");
		if(!e1){
			if(result == "ssginSuccess"){
				console.log(result);
				
				var url = $('#url').val();
			    var authUrl = "";
			    var action = "";
			        
		        if(url == "ssgin"){
		        	authUrl = "http://www.ssgin.com";
		        	action = "/ssgin/main.app";
		        }
		        if(url == "ssgpay"){
		        	authUrl = "http://www.ssgpay.com";
		        	action = "http:///" + ip + ":8081/main.ssgpay";
		        }
		        
		        $.ajax({
			    	url : "/ssgin/insertLog.app",
			    	type : "post",
			    	data : { auth_url : authUrl },
			      	success : function(){
			      		alert("SSG IN 성공^^");
			      		
			      		$('#phoneForm').attr('action', action);
			          	$('#phoneForm').submit();
			      	}
			   	});
			}
			
			if(result == "wrongPassword"){
				console.log(result);
				alert("비밀번호 오류!");
			}
			
			if(result == "noUser"){
				console.log(result);
				alert("존재하지 않는 사용자입니다.");
			}
			
			//location.href = "/ssgin/main.app";
		}
		
		else{
			alert("e1 : " + e1);
		}
	});
});
