<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<body>
	<br>
	<div class="container-sm">
		<form action="question" method="post">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">

					<p class="text-primary">&nbsp 1. 강의계획서를 통해 강의내용을 잘 파악할 수 있었다</p>

					<select multiple class="form-control" name="q1" required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>

					<p class="text-primary">&nbsp 2. 강의 시작 시간이 잘 지켜졌다</p>

					<select multiple class="form-control" name="q2"  required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>

					<p class="text-primary">&nbsp 3. 출석 점검 및 관리가 잘 이루어졌다</p>

					<select multiple class="form-control" name="q3"  required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>

					<p class="text-primary">&nbsp 4. 강의내용에 대한 설명이 명확하였다</p>

					<select multiple class="form-control" name="q4"  required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>

					<p class="text-primary">&nbsp 5. 교수와 학생 간 질문 및 답변이 잘 이루어졌다</p>

					<select multiple class="form-control" name="q5"  required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>
					<p class="text-primary">&nbsp 6. 교수는 학생의 인격을 존중하였다</p>
					<select multiple class="form-control" name="q6"  required
						style="height: 130px">
						<option value=1>1. 매우 그렇다</option>
						<option value=2>2. 그렇다</option>
						<option value=3>3. 보통이다</option>
						<option value=4>4. 그렇지않다</option>
						<option value=5>5. 전혀 그렇지않다</option>
					</select> <br>
					<p class="text-primary">&nbsp 7. 수업 및 강의환경의 개선에 대한 의견을 자유롭게 적어
						주시기 바랍니다</p>
					<textarea rows="6" cols="98" name = "q7"></textarea>
				</div>
				<div class="col-2"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2" align="center">
					<input type="submit" class="btn btn-primary" value="제출" />
				</div>
				<div class="col-5"></div>
			</div>
		</form>
	</div>
	<br>
</body>
<%@ include file="footer.jsp"%>
</html>