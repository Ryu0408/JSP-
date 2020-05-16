<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<body>
	<div class="container">
		<br>
		<h1>현재 ${array[0][5] }명이 설문조사에 실시하였습니다.</h1>
		<br> 1. 강의계획서를 통해 강의내용을 잘 파악할 수 있었다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[0][0]}%">매우
				그렇다(${array[0][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[0][1]}%">
				그렇다(${array[0][1]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[0][2]}%">
				보통이다(${array[0][2]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[0][3]}%">
				그렇지않다(${array[0][3]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[0][4]}%">전혀
				그렇지않다(${array[0][4]}명)</div>
		</div>
		<br> 2. 강의 시작 시간이 잘 지켜졌다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[1][0]}%">매우
				그렇다(${array[1][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[1][1]}%">
				그렇다(${array[1][1]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[1][2]}%">
				보통이다(${array[1][2]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[1][3]}%">
				그렇지않다(${array[1][3]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[1][4]}%">전혀
				그렇지않다(${array[1][4]}명)</div>
		</div>
		<br>3. 출석 점검 및 관리가 잘 이루어졌다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[2][0]}%">매우
				그렇다(${array[2][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[2][1]}%">
				그렇다(${array[2][1]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[2][2]}%">
				보통이다(${array[2][2]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[2][3]}%">
				그렇지않다(${array[2][3]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[2][4]}%">전혀
				그렇지않다(${array[2][4]}명)</div>
		</div>
		<br>4. 강의내용에 대한 설명이 명확하였다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[3][0]}%">매우
				그렇다(${array[3][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[3][1]}%">
				그렇다(${array[3][1]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[3][2]}%">
				보통이다(${array[3][2]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[3][3]}%">
				그렇지않다(${array[3][3]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[3][4]}%">전혀
				그렇지않다(${array[3][4]}명)</div>
		</div>
		<br>5. 교수와 학생 간 질문 및 답변이 잘 이루어졌다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[4][0]}%">매우
				그렇다(${array[4][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[4][1]}%">
				그렇다(${array[4][1]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[4][2]}%">
				보통이다(${array[4][2]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[4][3]}%">
				그렇지않다(${array[4][3]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[4][4]}%">전혀
				그렇지않다(${array[4][4]}명)</div>
		</div>
		<br>6. 교수는 학생의 인격을 존중하였다 <br> <br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[5][0]}%">매우
				그렇다(${array[5][0]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[5][1]}%">
				그렇다(${array[5][1]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[5][2]}%">
				보통이다(${array[5][2]}명)</div>
		</div>
		<br>

		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[5][3]}%">
				그렇지않다(${array[5][3]}명)</div>
		</div>
		<br>
		<div class="progress">
			<div class="progress-bar" style="width:${graphArray[5][4]}%">전혀
				그렇지않다(${array[5][4]}명)</div>
		</div>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr align="center">
					<th>7. 수업 및 강의환경의 개선에 대한 의견을 자유롭게 적어 주시기 바랍니다</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="q7" items="${q7List}">
				<tr align="center">
					<td colspan="6">${q7}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>


</body>
<%@ include file="footer.jsp"%>
</html>
