Web3 = require('web3');
web3 = new Web3();
web3.setProvider(new Web3.providers.HttpProvider('http://10.149.179.227:8545')); // 이거 localhost 대신 IP로 하면 안드로이드에서 트랜잭션 가능

var abi = JSON.parse('[{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"joinPossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"existID","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"memberJoin","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"ssginAuth","outputs":[{"name":"id","type":"bytes32"},{"name":"pwd","type":"bytes32"},{"name":"flag","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"ssginWithID","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"}],"name":"memberLeave","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"idList","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"leavePossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]');
var ssginContract = web3.eth.contract(abi);

/* 한조 address, pwd*/
/* var adminAddr = "0x521536ad50dd3a22fe6beb0ca0f8ff30a5161eee";
var adminPwd = "khc3121";  */

/* 지은 address, pwd */
var adminAddr = "0xa3cf1b84ee70fcf4db335e3e7d8f0fd3aa5045ca";
var adminPwd = "1111";

/* 지은 contract address */
var contractInstance = ssginContract.at('0xf3c80a68d305534077a1bbc8889ad62539f5c983');

/*$('#resetBtn').click(function(){
	console.log("reset");
	
	if(confirm("비밀번호 재설정은 계정 설정을 처음부터 다시 진행합니다. 계속하시겠습니까?") == true){
		leave("reset");
	}
});

$('#userDelete').click(function(){
	console.log("userDelete");
	
	if(confirm("계정을 해지하시면 이전 데이터는 모두 삭제됩니다. 계속하시겠습니까?") == true){
		leave("delete");
	}
});

function leave(state){*/
$(function(){
console.log("leave");
state = $('#state').val();
	
	var id = $('#hash').val();
	console.log(id);
	
	contractInstance.leavePossibleCheck.call(id, function(e1, result){
		if(!e1){
			if(result == "leavePossible"){
				console.log(result);
				web3.personal.unlockAccount(adminAddr, adminPwd, function(e2, success){
					contractInstance.memberLeave(id, {gas: 140000, from: adminAddr}, function(e3, txHash){
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
															console.log("Leave Success. hash : " + txHash);
															
															$.ajax({
																url: "/ssgin/leaveUser.app",
																type: "post",
																data: { state : state },
																success : function(){
																	$('.wrap-loading').addClass('display-none');
																	alert("탈퇴가 완료되었습니다.");
																	location.href = "/intro.app";
																}
															});
														}
														
														else{
															alert("e6 : " + e6);
														}
													});
												}else{
													$("#filter").append('['+block.transactions[i]+"] <br>");
												}
											}//end for
										}
										
										else{
											alert("e5 : " + e5);
										}
									});//end getBlock()
								}
								else{
									alert("e4 : " + e4);
								}
							});//end watch
						}
					});
				});
			}
			
			if(result == "noUser"){
				console.log(result);
				alert("존재하지 않는 사용자입니다.");
				location.href = "/intro.app";
			}
		}
		
		else{
			alert("e1 : " + e1);
		}
	});
});
