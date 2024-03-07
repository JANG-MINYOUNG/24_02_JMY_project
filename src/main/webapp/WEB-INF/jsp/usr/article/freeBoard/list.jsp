<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } ARTICLE LIST"></c:set>
<%@ include file="../../common/head.jspf"%>

<style>
    .section-padding {
        padding-left: 400px; 
        padding-right: 400px;
        padding-top: 50px;
    }
    
    .search-form-container {
        display: flex;
        justify-content: flex-end;
    }
    
    .search-form {
        display: flex;
        align-items: center;
    }
    
    .search-form select,
    .search-form input[type="text"],
    .search-form button {
        margin-left: 10px;
        border-width: 2px;
    }
    
    .search-form input[type="text"] {
        margin-right: 10px; /* Add margin to the right */
        border-width: 2px;
    }
    
    .search-form button {
        margin-left: 0;
    }
     .write-link {
        border-radius: 10px; 
        font-weight: bold;
        padding: 0px 10px; 
        display: inline-block;
        text-decoration: none;
        text-align: center; 
        color: black;
        width: 80px; 
    }
 
</style>

<section class="mt-8 text-xl px-4 section-padding">
    <div class="mx-auto overflow-x-auto">
        <div class="mb-4 search-form-container">
            <a href="#" class="write-link btn-ghost btn-sm" style="background-color: #ffc0cd;">글쓰기</a>
            <form action="" class="search-form">
                <input type="hidden" name="boardId" value="${param.boardId }" />
                <select data-value="${param.searchKeywordTypeCode }" class="select select-bordered select-sm w-full max-w-xs"
                    name="searchKeywordTypeCode">
                    <option value="title">제목</option>
                    <option value="body">내용</option>
                    <option value="title,body">제목+내용</option>
                </select>
                <input value="${param.searchKeyword }" name="searchKeyword" type="text" placeholder="검색어 입력"
                    class="input-sm input input-bordered w-48 max-w-xs" />
                <button class="btn btn-ghost btn-sm" style="width: 20%; background-color: #ffc0cd;" type="submit">검색</button>
            </form>
        </div>
    </div>
    <table class="table-box-1 table" border="1">
        <colgroup>
            <col style="width: 10%" />
            <col style="width: 20%" />
            <col style="width: 60%" />
            <col style="width: 10%" />
        </colgroup>
        <thead>
            <tr>
                <th>번호</th>
                <th>날짜</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>좋아요</th>
                <th>싫어요</th>

            </tr>
        </thead>
        <tbody>
            <c:forEach var="article" items="${articles }">
                <tr class="hover">

                    <td>${article.id }</td>
                    <td>${article.regDate.substring(0,10) }</td>
                    <td>
                        <a href="detail?id=${article.id }">${article.title }
                            <c:if test="${article.extra__repliesCnt > 0 }">
                                <span style="color: red;">[${article.extra__repliesCnt }]</span>
                            </c:if>
                        </a>
                    </td>
                    <td>${article.extra__writer }</td>
                    <td>${article.hitCount }</td>
                    <td>${article.goodReactionPoint }</td>
                    <td>${article.badReactionPoint }</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>


    <!-- 	원래 페이징 -->
  <div class="pagination flex justify-center mt-3">
    <div class="btn-group">
        <a class="btn btn-sm ${param.page == 1 ? 'btn-disabled' : '' }" href="?page=1&boardId=${param.boardId}">
            <i class="fas fa-angle-double-left"></i> First
        </a>
        <a class="btn btn-sm ${param.page == 1 ? 'btn-disabled' : '' }" href="?page=${param.page - 1}&boardId=${param.boardId}">
            <i class="fas fa-angle-left"></i> Prev
        </a>
        <c:forEach begin="1" end="${pagesCount }" var="i">
            <a class="btn btn-sm ${param.page == i ? 'btn-active' : '' }" href="?page=${i }&boardId=${param.boardId}">${i }</a>
        </c:forEach>
        <a class="btn btn-sm ${param.page == pagesCount ? 'btn-disabled' : '' }" href="?page=${param.page + 1}&boardId=${param.boardId}">
            Next <i class="fas fa-angle-right"></i>
        </a>
        <a class="btn btn-sm ${param.page == pagesCount ? 'btn-disabled' : '' }" href="?page=${pagesCount}&boardId=${param.boardId}">
            Last <i class="fas fa-angle-double-right"></i>
        </a>
    </div>
  </div>
</section>