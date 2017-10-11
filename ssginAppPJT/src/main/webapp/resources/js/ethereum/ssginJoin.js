Web3 = require('web3');
web3 = new Web3();
web3.setProvider(new Web3.providers.HttpProvider('http://10.149.179.196:8545'));

var abi = JSON.parse('[{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"memberJoin","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"string"}],"name":"leave","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"memberLeave","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"string"},{"name":"userPwd","type":"string"}],"name":"join","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"userPwd","type":"string"}],"name":"makePwd","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"id","type":"bytes32"}],"name":"existID","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"ssginAuth","outputs":[{"name":"id","type":"bytes32"},{"name":"pwd","type":"bytes32"},{"name":"flag","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"},{"name":"userPwd","type":"string"}],"name":"ssginWithID","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"string"}],"name":"makeId","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]');
var ssginContract = web3.eth.contract(abi);

/* 한조 address, pwd
 * var adminAddr = "0x521536ad50dd3a22fe6beb0ca0f8ff30a5161eee";
 * var adminPwd = "khc3121"; */

/* 한조 contract address
 * var contractInstance = ssginContract.at('0x658bd5e8b2465053e02c873ca3934230c879631d');
 */

/* 지은 address, pwd */
var adminAddr = "0xa3cf1b84ee70fcf4db335e3e7d8f0fd3aa5045ca";
var adminPwd = "1111";

/* 지은 contract address */
var contractInstance = ssginContract.at('0x76d1c4feddea6cd7c864a8de0e810cf1ef29269f');

$(function(){
	console.log("register");
	
	var userId = $('#name').val();
	var birth = $('#birth').val();
	var gender = $('#gender').val();
	var phone = $('#phone').val();
	console.log(userId, birth, gender, phone);
	
	var id = userId + birth + gender + phone;
    	
	var originPwd = $('#pwd').val();
	var pwd = originPwd.substring(0,1) + "s"
				+ originPwd.substring(1,2) + "s"
				+ originPwd.substring(2,3) + "g"
				+ originPwd.substring(3,4) + "i"
				+ originPwd.substring(4,5) + "n"
				+ originPwd.substring(5);
	
	/*var id = web3.sha3(userId+birth+gender+phone);
	var pwd = web3.sha3(newPwd);*/
	console.log(id);
	console.log(pwd);
	
	contractInstance.memberJoin.call(id, function(e1, result){
		console.log("memberJoin");
		if(!e1){
			if(result == "joinPossible"){
				console.log(result);
				web3.personal.unlockAccount(adminAddr, adminPwd, function(e2, success){
					contractInstance.join(id, pwd, {from: adminAddr}, function(e3, txHash){
						if(!e3){
							$("#filter").append('Smart Contract Transation ID  : <span style="background:#C0FFFF;">' + txHash +' </span><br>');
							var blockFilter = web3.eth.filter('latest');
							$("#filter").append('Transaction Start <br>');
							blockFilter.watch(function(e4, blockHash) {
								if(!e4){
									web3.eth.getBlock(blockHash, function(e5,block){
										if(!e5){
											$("#filter").append('New Block('+block.number+')['+block.hash+'] / ' + block.transactions.length + ' TXs <br>');
											for(var i = 0 ; i < block.transactions.length ; i++){
												if(txHash == block.transactions[i]){	
													$("#filter").append('<span style="background:#C0FFFF;">[' + block.transactions[i] + "] -- checked</span><br>");
													$("#filter").append('Transaction End <br>');
													blockFilter.stopWatching(function(e6,log){
														if(!e6){
															console.log(log);
															console.log("Join Success. hash : " + txHash);
															
															$('.wrap-loading').addClass('display-none');
															alert("블록체인 SSG IN 시스템 가입을 환영합니다^^");
															location.href = "/ssgin/loginForm.app";
															
															$.ajax({
																url: "/ssgin/joinDB.app",
																type: "post",
																data: { user_hash : web3.sha3(id) },
																success : function(){
																	$('.wrap-loading').addClass('display-none');
																	alert("블록체인 SSG IN 시스템 가입을 환영합니다^^");
																	location.href = "/ssgin/loginForm.app";
																}
															});
														}
														
														else{
															console.log("e6");
															alert(e6);
														}
													});
												}else{
													$("#filter").append('['+block.transactions[i]+"] <br>");
												}
											}//end for
										}
										
										else{
											console.log("e5");
											alert(e5);
										}
									});//end getBlock()
								}
								else{
									console.log("e4");
									alert(e4);
								}
							});//end watch
						}
						else{
							console.log("e3");
							alert(e3);
						}
					});
				});
			}
			
			if(result == "idAlreadyExist"){
				console.log(result);
				alert("사용자가 시스템에 존재합니다.");
			}
		}
		
		else{
			console.log("e1");
			alert(e1);
		}
	});
});

// 딜레이시키고 화면변경할 때 사용할 것
function sleep(msecs) 
{
    var start = new Date().getTime();
    var cur = start;
    while (cur - start < msecs) 
    {
        cur = new Date().getTime();
    }
}