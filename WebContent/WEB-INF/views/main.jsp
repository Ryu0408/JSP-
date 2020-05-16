<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<body>
	<div class="container-sm" align="center">
		<div class="jumbotron">
			<h1>ITBANK 수강생 설문평가</h1>
			<br>
			<p>
				본 평가는 귀 학생이 수강한 교과목에 대한 강의만족도를 파악하여 향후 강의방법을 <br>개선하고 강의의 질을
				향상시키기 위한 기초자료로 활용하고자 실시합니다
			</p>
			<p>
				응답 내용은 절대적으로 보안이 유지되며, 응답 결과는 귀 학생의 성적이나 <br>장학생 선발 등 어떠한 것에도
				영향을 미치지 않음을 알려드립니다
			</p>
			<p>
				아울러, 본 평가는 교수 개개인에 대한 인기 및 호감도 조사가 아닌 <br>교수의 강의 및 내용 등에 대한
				만족도를 평가하는 것이므로 <br>항목별로 객관적이고 솔직한 응답을 부탁드립니다 <br><br>
			<form action="question">
				<div class="row">
					<div class="col-2" align="right">이름</div>
					<div class="col-3">
						<input type="text" class="form-control" id="usr"
						name = "name" required>
					</div>
					<div class="col-2" align="right">전화번호</div>
					<div class="col-3">
						<input type="text" class="form-control" id="pwd"
						name = "phonenum" required placeholder="010-XXXX-XXXX">
					</div>
					<div class="col-2">
						<input type="submit" class="btn btn-primary" value="로그인"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>