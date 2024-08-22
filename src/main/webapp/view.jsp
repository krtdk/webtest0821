<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>세부 내용</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
        <jsp:include page="header.jsp" />


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <div  class="container" style="padding-top: 50;">
    <table class="table table-bordered table-hover">
    <tr>
        <th>제목</th>
        <td>${msg.title}</td>
    </tr>
    <tr>
        <th>작성자</th>
        <td>${msg.writer}</td>
    </tr>
    <tr>
        <th>작성일시</th>
        <td>${msg.regtime}</td>
    </tr>
    <tr>
        <th>조회수</th>
        <td>${msg.hits}</td>
    </tr>
    <tr>
        <th>내용</th>
        <td>${msg.content}</td>
    </tr>
</table>
<button type="button" class="btn btn-outline-primary" onclick="location.href='list'">목록보기</button>
<button type="button" class="btn btn-outline-secondary" onclick="location.href='write?num=${param.num}'">수정</button>
<button type="button" class="btn btn-outline-success" onclick="location.href='delete?num=${param.num}'">삭제</button>

</div>
</body>
 <jsp:include page="footer.jsp" />

</html>