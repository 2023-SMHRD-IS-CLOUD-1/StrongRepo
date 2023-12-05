$(function() {
	"use strict";

	$.ajax({

		// 데이터 요청 주소
		url: "DashBoard.do",

		// 데이터 타입
		dataType: "json",

		// 성공
		success: function(result) {
			console.log("성공");
			console.log("데이터: ", result); // 객체 전체를 출력해 보기 위해 콤마(,)를 사용하여 분리
			console.log("DashBoard.jsp2");

			// 서버로부터 받은 JSON 객체의 c_year와 c_num 속성값 출력
			if (result) {

				//Polar Chart
				new Chart(document.getElementById("polar-chart"), {
					type: 'polarArea',
					data: {
						labels: [result[26].j_job_group, result[27].j_job_group, result[29].j_job_group, result[28].j_job_group + result[39].j_job_group, result[30].j_job_group, result[33].j_job_group, result[32].j_job_group, result[31].j_job_group, result[34].j_job_group],
						datasets: [
							{

								label: "Population (millions)",
								backgroundColor: ["#aee5ed", "#74c8d5", "#45a9b9", "#56abb9", "#60969f", "#3c838f", "#106e7d","#026777", "#00525f"],
								data: [result[26].j_num, result[27].j_num, result[29].j_num, result[28].j_num + result[39].j_num, result[30].j_num, result[33].j_num, result[32].j_num, result[31].j_num, result[34].j_num]
							}





						]
					},
					options: {
						title: {
							display: true,
							text: '마약사범 직업'
						}
					}
				});
			} else {
				// 예외 처리: res가 비어있거나 유효한 데이터가 없는 경우
				console.log("데이터가 없거나 형식이 맞지 않습니다.");
			}
		},
		// 예외
		error: function(xhr, status, error) {
			console.log("Error: ", error); // 에러 로그 출력
			console.log("DashBoard.jsp3");
		}
	});


}); 