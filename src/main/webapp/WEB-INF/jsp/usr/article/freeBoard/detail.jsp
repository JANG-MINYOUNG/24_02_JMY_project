<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../../common/head.jspf"%>

<!-- <iframe src="http://localhost:8081/usr/article/doIncreaseHitCountRd?id=372" frameborder="0"></iframe> -->

<!-- 변수 -->
<script>
	const params = {};
	params.id = parseInt('${param.id}');
	params.memberId = parseInt('${loginedMemberId}');
	
	console.log(params);
	console.log(params.memberId);
	
	var isAlreadyAddGoodRp = ${isAlreadyAddGoodRp};
	var isAlreadyAddBadRp = ${isAlreadyAddBadRp};
	
	
</script>

<!-- 조회수 -->
<script>
	function ArticleDetail__doIncreaseHitCount() {
		const localStorageKey = 'article__' + params.id + '__alreadyView';

		if (localStorage.getItem(localStorageKey)) {
			return;
		}

		localStorage.setItem(localStorageKey, true);

		$.get('../article/doIncreaseHitCountRd', {
			id : params.id,
			ajaxMode : 'Y'
		}, function(data) {
			$('.article-detail__hit-count').empty().html(data.data1);
		}, 'json');
	}

	$(function() {
		// 		ArticleDetail__doIncreaseHitCount();
		setTimeout(ArticleDetail__doIncreaseHitCount, 2000);
	});
</script>

<!-- 좋아요 싫어요  -->
<script>
	<!-- 좋아요 싫어요 버튼	-->
	function doGoodReaction(articleId) {
	    if (isNaN(params.memberId) == true) {
	        if (confirm('로그인 후 이용해주세요.')) {
	            var currentUri = encodeURIComponent(window.location.href);
	            window.location.href = '../member/login?afterLoginUri=' + currentUri;
	            return;
	        }
	    }

	    $.ajax({
	        url: '/usr/reactionPoint/doGoodReaction',
	        type: 'POST',
	        data: {relTypeCode: 'article', relId: articleId},
	        dataType: 'json',
	        success: function(data) {
	            console.log(data);
	            console.log('data.data1Name : ' + data.data1Name);
	            console.log('data.data1 : ' + data.data1);
	            console.log('data.data2Name : ' + data.data2Name);
	            console.log('data.data2 : ' + data.data2);
	            if (data.resultCode.startsWith('S-')) {
	                var likeButton = $('#likeButton');
	                var likeCount = $('#likeCount');
	                var DislikeButton = $('#DislikeButton');
	                var DislikeCount = $('#DislikeCount');
	                var bottomLikeCount = $('.bottom-bar span:eq(0)');

	                if (data.resultCode == 'S-1') {
	                    likeButton.toggleClass('btn-outline');
	                    likeCount.text('좋아요 ' + data.data1);
	                    bottomLikeCount.text('좋아요: ' + data.data1);
	                } else if (data.resultCode == 'S-2') {
	                    DislikeButton.toggleClass('btn-outline');
	                    DislikeCount.text('싫어요 ' + data.data2);
	                    likeButton.toggleClass('btn-outline');
	                    likeCount.text('좋아요 ' + data.data1);
	                    bottomLikeCount.text('좋아요: ' + data.data1);
	                } else {
	                    likeButton.toggleClass('btn-outline');
	                    likeCount.text('좋아요 ' + data.data1);
	                    bottomLikeCount.text('좋아요: ' + data.data1);
	                }

	            } else {
	                alert(data.msg);
	            }

	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert('좋아요 오류 발생 : ' + textStatus);

	        }

	    });
	}



	function doBadReaction(articleId) {

	    if (isNaN(params.memberId) == true) {
	        if (confirm('로그인 후 이용해주세요.')) {
	            var currentUri = encodeURIComponent(window.location.href);
	            window.location.href = '../member/login?afterLoginUri=' + currentUri;
	            return;
	        }
	    }

	    $.ajax({
	        url: '/usr/reactionPoint/doBadReaction',
	        type: 'POST',
	        data: {relTypeCode: 'article', relId: articleId},
	        dataType: 'json',
	        success: function(data) {
	            console.log(data);
	            console.log('data.data1Name : ' + data.data1Name);
	            console.log('data.data1 : ' + data.data1);
	            console.log('data.data2Name : ' + data.data2Name);
	            console.log('data.data2 : ' + data.data2);
	            if (data.resultCode.startsWith('S-')) {
	                var likeButton = $('#likeButton');
	                var likeCount = $('#likeCount');
	                var DislikeButton = $('#DislikeButton');
	                var DislikeCount = $('#DislikeCount');

	                if (data.resultCode == 'S-1') {
	                    DislikeButton.toggleClass('btn-outline');
	                    DislikeCount.text('싫어요 ' + data.data2);
	                } else if (data.resultCode == 'S-2') {
	                    likeButton.toggleClass('btn-outline');
	                    likeCount.text('좋아요 ' + data.data1);
	                    DislikeButton.toggleClass('btn-outline');
	                    DislikeCount.text('싫어요 ' + data.data2);

	                } else {
	                    DislikeButton.toggleClass('btn-outline');
	                    DislikeCount.text('싫어요 ' + data.data2);
	                }

	            } else {
	                alert(data.msg);
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert('싫어요 오류 발생 : ' + textStatus);
	        }

	    });
	}

	$(function() {
	    checkRP();
	});
</script>

<!-- 댓글 -->
<script>
		var ReplyWrite__submitDone = false;

		function ReplyWrite__submit(form) {
			if (ReplyWrite__submitDone) {
				alert('이미 처리중입니다');
				return;
			}
			console.log(123);
			
			console.log(form.body.value);
			
			if (form.body.value.length < 3) {
				alert('댓글은 3글자 이상 입력해');
				form.body.focus();
				return;
			}

			ReplyWrite__submitDone = true;
			form.submit();

		}
</script>
<!-- 댓글 수정 -->
<script>
function toggleModifybtn(replyId) {
	
	console.log(replyId);
	
	$('#modify-btn-'+replyId).hide();
	$('#save-btn-'+replyId).show();
	$('#reply-'+replyId).hide();
	$('#modify-form-'+replyId).show();
}

function doModifyReply(replyId) {
	 console.log(replyId); // 디버깅을 위해 replyId를 콘솔에 출력
	    
	    // form 요소를 정확하게 선택
	    var form = $('#modify-form-' + replyId);
	    console.log(form); // 디버깅을 위해 form을 콘솔에 출력

	    // form 내의 input 요소의 값을 가져옵니다
	    var text = form.find('input[name="reply-text-' + replyId + '"]').val();
	    console.log(text); // 디버깅을 위해 text를 콘솔에 출력

	    // form의 action 속성 값을 가져옵니다
	    var action = form.attr('action');
	    console.log(action); // 디버깅을 위해 action을 콘솔에 출력
	
    $.post({
    	url: '/usr/reply/doModify', // 수정된 URL
        type: 'POST', // GET에서 POST로 변경
        data: { id: replyId, body: text }, // 서버에 전송할 데이터
        success: function(data) {
        	$('#modify-form-'+replyId).hide();
        	$('#reply-'+replyId).text(data);
        	$('#reply-'+replyId).show();
        	$('#save-btn-'+replyId).hide();
        	$('#modify-btn-'+replyId).show();
        },
        error: function(xhr, status, error) {
            alert('댓글 수정에 실패했습니다: ' + error);
        }
	})
}
</script>

<section class="mt-20 text-l px-4 ">
    <div style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
        <table class="table-box-1" border="1" style="width: 60%; margin-left: 10%;">
            <tbody>
                <tr>
                    <td style="font-size: 35px; font-weight: 500;">${article.title }</td>
                </tr>
                <tr>
                    <td style="font-size: 20px; font-weight: 500;">${article.extra__writer }</td>
                </tr>
                <tr>
                    <td style="color: #999999;">작성날짜 ${article.regDate } 수정날짜 ${article.updateDate }<span class="article-detail__hit-count" style="margin-left: 15px;">조회 ${article.hitCount }</span></td>
                </tr>
                <tr>
                    <td>
                        <div style="margin-top: 10%;">${article.body }</div>
                    </td>
                </tr>      
                <tr>
                    <td><img class="w-full rounded-xl" src="${rq.getImgUri(article.id)}"/></td>
                </tr>
                <tr style="text-align: left;">
                    <th id="likeCount">좋아요 ${article.goodReactionPoint }</th>    
                </tr>
                <tr style="text-align: left;">
                    <th id="DislikeCount" >싫어요 ${article.badReactionPoint }</th>   
                </tr>
                <tr style="text-align: left;">
                    <th>추천 ${usersReaction }</th>
                    <td>
                        <!-- href="/usr/reactionPoint/doGoodReaction?relTypeCode=article&relId=${param.id }&replaceUri=${rq.currentUri}" -->
                        <button id="likeButton" class="btn btn-outline btn-success" onclick="doGoodReaction(${param.id})">좋아요</button>
                        <button id="DislikeButton" class="btn btn-outline btn-error" onclick="doBadReaction(${param.id})">싫어요</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="btns mt-5" style="text-align: left;">
            
            <c:if test="${article.userCanModify }">
                <a class="btn btn-outline" href="../freeBoard/modify?id=${article.id }">수정</a>
            </c:if>
            <c:if test="${article.userCanDelete }">
                <a class="btn btn-outline" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;"
                    href="../article/doDelete?id=${article.id }"
                >삭제</a>
            </c:if>
        </div>
    </div>
</section>

<section class="mt-5 px-3" style="width: 60%; margin-left: 25%; margin-bottom: 5%;">
    <c:if test="${rq.isLogined() }">
        <form action="/usr/reply/doWrite" method="POST" onsubmit="ReplyWrite__submit(this); return false;">
            <input type="hidden" name="relTypeCode" value="article" /> <input type="hidden" name="relId" value="${article.id }" />
            <table class="write-box table-box-1" border="1">
                <tbody>
                    <tr>
                        <th>내용</th>
                        <td><textarea class="input input-bordered input-primary w-full max-w-xs" autocomplete="off"
                                placeholder="내용을 입력해주세요" name="body"
                            > </textarea></td>
                        <td style="text-align: right;"><input class="btn btn-outline btn-info" type="submit" value="댓글 작성" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </c:if>
    <c:if test="${!rq.isLogined() }">
        <a class="btn btn-outline btn-ghost" href="../member/login">LOGIN</a> 하고 댓글 써
    </c:if>
    <div class="mx-auto">
        <h2>댓글 리스트(${repliesCount })</h2>
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
                    <th>내용</th>
                    <th>작성자</th>
                    <th>좋아요</th>
                    <th>싫어요</th>
                    <th>수정</th>
                    <th>삭제</th>
                    <th></th> <!-- 이 부분 추가 -->
                </tr>
            </thead>
            <tbody>

                <c:forEach var="reply" items="${replies }">
                    <tr class="hover">
                        <td>${reply.id }</td>
                        <td>${reply.regDate.substring(0,10) }</td>
                        <td><span id="reply-${reply.id }">${reply.body }</span>
                            <form method="POST" id="modify-form-${reply.id }" style="display: none;" action="/usr/reply/doModify">
                                <input type="text" value="${reply.body }" name="reply-text-${reply.id }" />
                            </form></td>
                        <td>${reply.extra__writer }</td>
                        <td>${reply.goodReactionPoint }</td>
                        <td>${reply.badReactionPoint }</td>
                        <td><c:if test="${reply.userCanModify }">
                                <%-- href="../reply/modify?id=${reply.id }" --%>
                                <button onclick="toggleModifybtn('${reply.id}');" id="modify-btn-${reply.id }" style="white-space: nowrap;"
                                    class="btn btn-outline"
                                >수정</button>
                                <button onclick="doModifyReply('${reply.id}');" style="white-space: nowrap; display: none;"
                                    id="save-btn-${reply.id }" class="btn btn-outline"
                                >저장</button>
                            </c:if></td>
                        <td><c:if test="${reply.userCanDelete }">
                                <a style="white-space: nowrap;" class="btn btn-outline"
                                    onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;" href="../reply/doDelete?id=${reply.id }"
                                >삭제</a>
                            </c:if></td>
                        <td></td> <!-- 이 부분 추가 -->
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</section>

<section class="mt-5 px-3"">
    <div class="bottom-bar-container">
        <div class="bottom-bar">
            <button class="btn btn-outline" type="button" onclick="history.back();">뒤로가기</button>
        </div>
        <div class="bottom-bar">
            <span>좋아요: ${article.goodReactionPoint }</span>
            <span>댓글 수: ${repliesCount }</span>
        </div>
    </div>
</section>

<style>
    .bottom-bar-container {
        display: flex;
        justify-content: space-between;
        position: fixed;
        bottom: 0;
        width: 100%;
        background-color: white;
        box-shadow: 0px -2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px 20px;
        z-index: 1000;
    }
</style>

