// Dashboard 1 Morris-chart

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
				var line = new Morris.Line({
					element: 'morris-line-chart',
					resize: true,
					data: [
						{ y: result[0].c_year.toString() , item1: result[0].c_num },
						{ y: result[1].c_year.toString(), item1: result[1].c_num },
						{ y: result[2].c_year.toString(), item1: result[2].c_num },
						{ y: result[3].c_year.toString(), item1: result[3].c_num },
						{ y: result[4].c_year.toString(), item1: result[4].c_num },
						{ y: result[5].c_year.toString(), item1: result[5].c_num },
						{ y: result[6].c_year.toString(), item1: result[6].c_num },
						{ y: result[7].c_year.toString(), item1: result[7].c_num },
						{ y: result[8].c_year.toString(), item1: result[8].c_num },
						{ y: result[9].c_year.toString(), item1: result[9].c_num }

					],
					xkey: 'y',
					ykeys: ['item1'],
					labels: ['Item 1'],
					gridLineColor: '#eef0f2',
					lineColors: ['#e4281c'],
					lineWidth: 3,
					hideHover: 'auto'


				});

			} else {
				// 예외 처리: res가 비어있거나 유효한 데이터가 없는 경우
				console.log("데이터가 없거나 형식이 맞지 않습니다.");
			}
		},
		error: function(xhr, status, error) {
			console.log("Error: ", error); // 에러 로그 출력
			console.log("DashBoard.jsp3");
		}
	});
});






