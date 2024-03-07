<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE WRITE"></c:set>
<%@ include file="../../common/head.jspf"%>
<%@ include file="../../common/toastUiEditorLib.jspf"%>
<!-- Article write 관련 -->
<script type="text/javascript">
	let ArticleWrite__submitFormDone = false;
	function ArticleWrite__submit(form) {
		if (ArticleWrite__submitFormDone) {
			return;
		}
		form.title.value = form.title.value.trim();
		if (form.title.value == 0) {
			alert('제목을 입력해주세요');
			return;
		}
		const editor = $(form).find('.toast-ui-editor').data(
				'data-toast-editor');
		const markdown = editor.getMarkdown().trim();
		if (markdown.length == 0) {
			alert('내용 써라');
			editor.focus();
			return;
		}
		form.body.value = markdown;
		ArticleWrite__submitFormDone = true;
		form.submit();
	}
</script>



<section class="mt-3 text-xl px-4" style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div class="mx-auto" style="display: flex; flex-direction: column;">
        <form action="/usr/article/freeBoard/doWrite" method="POST" onsubmit="ArticleWrite__submit(this); return false;">
            <input type="hidden" name="body">
            <table class="write-box table-box-1" border="1">
                <tbody>
               	 	<tr>
						<th>작성자</th>
						<td>
							<div>${rq.loginedMember.nickname }</div>
						</td>
					</tr>
					<tr>
						<th>게시판</th>
						<td>
							<select class="select select-ghost w-full max-w-xs" name="boardId">
								<option value="1">자유게시판</option>
								<option value="2">나의 여행일지</option>
							</select>
						</td>
					</tr>
                    <tr>
                        <th style="width: 100px;">제목</th>
                        <td>
                            <input class="input input-ghost w-full max-w-xs" autocomplete="off" type="text"
                                placeholder="제목을 입력해주세요" name="title" style="border-color: #ffc0cd; width: 400px;"/>
                        </td>
                    </tr>
                    <tr style="height: 20px;"></tr>
                    <tr>
                        <th style="width: 20%;">내용</th>
                        <td>
                            <div class="toast-ui-editor">
                                <script type="text/x-template">
      </script>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td style="display: flex; justify-content: space-between;">
                            <button class="btn btn-outline btn-info" type="submit" value="작성">작성</button>
                            <button class="btn btn-outline" class="" type="button" onclick="history.back();">뒤로가기</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</section>
