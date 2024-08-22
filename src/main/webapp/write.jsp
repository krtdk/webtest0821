<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>글쓰기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
        <jsp:include page="header.jsp" />

    <div class="container" style="padding-top: 50px;">
        <form method="post" action="${action}">
            <div class="mb-3">
                <label for="title" class="form-label">제목</label>
                <input type="text" class="form-control" id="title" name="title" value="${msg.title}">
            </div>
            <div class="mb-3">
                <label for="writer" class="form-label">작성자</label>
                <input type="text" class="form-control" id="writer" name="writer" value="${sessionScope.customInfo.name}" readonly>
            </div>
            <div class="mb-3">
                <label for="content" class="form-label">내용</label>
                <textarea class="form-control" id="content" rows="5" name="content">${msg.content}</textarea>
            </div>
            <input type="submit" value="${action == 'insert' ? '저장' : '수정'}" class="btn btn-outline-primary">
            <input type="button" value="취소" onclick="history.back()" class="btn btn-outline-danger">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
 <jsp:include page="footer.jsp" />

</html>
