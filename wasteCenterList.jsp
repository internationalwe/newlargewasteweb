<!DOCTYPE html>
<!-- 자바스크립트 차단된 콘텐츠 자동 허용 실시 -->
<!-- saved from url=(0013)about:internet -->

<!-- 표시 언어 지정 -->
<html lang="ko">
	<!-- 헤더 정의 부분 -->
	<head>
		<title>폐기물 대행업체 리스트</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<link
			rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"
		/>

		<link rel="stylesheet" href="style.css" />
		<script src="color.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<style>
			/* [html, body 영역 스타일 지정] */
			html,
			body {
				width: 100%;
				height: 100%;
				margin: 0;
				padding: 0;
				border: none;
				overflow: auto;
			}

			/* [body 스크롤바 메인 스타일 지정] */
			body::-webkit-scrollbar {
				width: 10px;
				background-color: #c1c1c1;
			}
			/* body 스크롤바 thumb 스타일 지정 */
			body::-webkit-scrollbar-thumb {
				background-color: #444444;
			}
		</style>
		<script>
			var Secho_list = [
				{
					place: '방배본ㆍ1ㆍ4동, 잠원동, 반포2ㆍ3동, 반포4동(반포대로 서편 - 서래마을 방면)',
					name: '하동기업',
					phone_number: '02-535-3411~2',
				},
				{
					place: '서초1ㆍ2ㆍ4동, 방배3동',
					name: '고려이엔알',
					phone_number: '02) 3462-1464~5',
				},
				{
					place: '반포본동, 양재1동(우면동), 양재2동(원지동)',
					name: '대승에코그린',
					phone_number: '02) 578-6675~6',
				},
				{
					place: '방배2동, 반포1동, 반포4동(반포대로 동편 - 미도아파트 방면)',
					name: '성광환경',
					phone_number: '02) 3461-1613~4',
				},
				{
					place: '서초3동, 내곡동(염곡동, 신원동)',
					name: '성진기업',
					phone_number: '02) 3474-9384~5',
				},
			];
			function handleOnChange(e){
				const tableList = [];
				var gu_list = Secho_list;
				tableInsert(gu_list)
			};
		</script>
		<!-- 내부 JS 지정 -->
		<script type="text/javascript">
			/* [html 최초 로드 및 이벤트 상시 대기 실시] */
			// window.onload = function () {
			// 	console.log('');
			// 	console.log('[window onload] : [start]');
			// 	console.log('');
			// };

			/* [tbody tr 동적 삽입 이벤트 수행 함수] */
			function tableInsert(gu_list) {
				$('#dyn_tbody').empty();
				console.log('');
				for (var i = 0; i < gu_list.length; i++) {
					// json 데이터 파싱 실시
					var place = gu_list[i].place;
					var name = gu_list[i].name;
					var phone_number = gu_list[i].phone_number;

					// 동적으로 리스트 추가
					var insertTr = ''; // 변수 선언
					insertTr += '<tr>'; // body 에 남겨둔 예시처럼 데이터 삽입
					insertTr += "<th scope='row'>" + place + '</th>'; // body 에 남겨둔 예시처럼 데이터 삽입
					insertTr += '<td>' + name + '</td>';
					insertTr += '<td>' + phone_number + '</td>';
					insertTr += '</tr>';
					
					// jquery append 사용해 동적으로 추가 실시
					$('#dyn_tbody').append(insertTr);
				}
			}
		</script>
	</head>
	<nav>
		<ul class="nav-container">
			<a href="index.html"
				><img
					src="img\KakaoTalk_20210630_213321666.png"
					alt="이미지"
					height="52ox"
			/></a>
			<li class="nav-item"><a href="chair.html">의자</a></li>
			<li class="nav-item"><a href="desk.html">책상</a></li>
			<li class="nav-item"><a href="drawer.html">서랍장</a></li>
			<li class="nav-item"><a href="bed.html">침대</a></li>
			<li class="nav-item">
				<a href="recyclingmap.html">재활용센터 지도</a>
			</li>
			<li class="nav-item"> <a href="wasteCenterList.jsp">대형가구 폐기 방법</a> </li>
		</ul>
	</nav>
	<body>
		
		</h3>
		<header>대형가구 재사용 판단 시스템</header>
		<h2>폐기 할 침대의 재사용성을 판단해보세요</h2>
		<div class="gu_list">
			<select
				name="seoul-gu"
				id="gu-select"
				onchange="handleOnChange(this)"
			>
				<option value="">구를 선택하세요</option>
				<option value="Jongno">종로구</option>
				<option value="Jung">중구</option>
				<option value="Yongsan">용산구</option>
				<option value="Seongdong">성동구</option>
				<option value="Gwangjin">광진구</option>
				<option value="Dongdaemun">동대문구</option>
				<option value="Jungnang">중랑구</option>
				<option value="Seongbuk">성북구</option>
				<option value="Gangbuk">강북구</option>
				<option value="Dobong">도봉구</option>
				<option value="Nowon">노원구</option>
				<option value="Eunpyeong">은평구</option>
				<option value="Seodaemun">서대문구</option>
				<option value="Mapo">마포구</option>
				<option value="Yangcheon">양천구</option>
				<option value="Gangseo">강서구</option>
				<option value="Guro">구로구</option>
				<option value="Geumcheon">금천구</option>
				<option value="Yeongdeungpo">영등포구</option>
				<option value="Dongjak">동작구</option>
				<option value="Gwanak">관악구</option>
				<option value="Seocho">서초구</option>
				<option value="Gangnam">강남구</option>
				<option value="Songpa">송파구</option>
				<option value="Gangdong">강동구</option>
			</select>
		</div> 	
		<!-- 테이블 속성 정의 -->
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">처리지역</th>
					<th scope="col">대행업체</th>
					<th scope="col">전화번호</th>
				</tr>
			</thead>
			<tbody id="dyn_tbody">
				<!-- <tr>
	      <th scope="row">1</th>
	      <td>Mark</td>
	      <td>Otto</td>	      
	    </tr> -->
			</tbody>
		</table>

		<!-- 페이징 속성 정의 -->
		<nav aria-label="Page navigation example">
			<ul id="dyn_ul" class="pagination" style="justify-content: center">
				<!-- <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>	    
	    <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
			</ul>
		</nav>
	</body>
</html>
