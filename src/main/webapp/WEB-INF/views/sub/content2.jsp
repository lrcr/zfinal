<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="container-fluid">
<div class="row">
	<c:if test="${nothing !=null }">
		<div class="col-lg-12"><h1>검색결과가 없습니다ㅠ</h1></div>
	</c:if>
	<c:forEach items="${broadcast}" var="dto">
		<!--sample1-->
		<div class="col-sm-6 col-md-3 tv-detail" id="${dto.no}th-store">
			<div class="thumbnail">
				<%-- <div class="embed-responsive embed-responsive-4by3">
					<iframe class="embed-responsive-item" src="${dto.link}"></iframe>
				</div> --%>
				<img class="content-img" style="width:100%; height:30%" src="images/storeimg/${dto.no}.jpg" alt="이미지 로딩실패">
				<div class="caption">
					<h3 class="cont-nm">${dto.nm}</h3>
					<p>${dto.tv}</p>
					<p>
						<fmt:parseNumber value="${dto.eval}" var="eval"/>
						<span class="star-rating small">
							<c:if test="${eval==5}">
								<i></i><i></i><i></i><i></i><i class="on"></i>
							</c:if>
							<c:if test="${eval>=4 && eval<5}">
								<i></i><i></i><i></i><i class="on"></i><i></i>
							</c:if>
							<c:if test="${eval>=3 && eval<4}">
								<i></i><i></i><i class="on"></i><i></i><i></i>
							</c:if>
							<c:if test="${eval>=2 && eval<3}">
								<i></i><i class="on"></i><i ></i><i></i><i></i>
							</c:if>
							<c:if test="${eval>=1 && eval<2}">
								<i></i><i class="on"></i><i ></i><i></i><i></i>
							</c:if>
							<c:if test="${eval<1}">
								<i></i><i></i><i></i><i></i><i></i>
							</c:if>
						</span>	
					</p>
					<p><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#storedetail${dto.no}">상세정보 </a></p>
				</div>
			</div>
		</div>
	</c:forEach>
</div>
</div>
<!--.row 끝-->