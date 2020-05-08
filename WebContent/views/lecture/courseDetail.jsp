<%@page import="com.lecture.db.LectureDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html lang="ko-KR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>코딩팜 - ${ ldto.l_m_id }</title>

<link href="./img/logo.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="./css/courseDetail.css">
<link rel="stylesheet" href="./css/bulma.css">

</head>

<script type="text/javascript">
	function numberFormat(inputNumber) {
		return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
</script>

<body class="course_detail">
	<%
		LectureDTO ldto = (LectureDTO)request.getAttribute("ldto");
	%>
	<div id="root">
	
<!-- include header -->	
	<jsp:include page="/include/header.jsp"/>
<!-- include header -->	
		
		<main id="main">
		<section class="course_header_container">
			<div class="container">
				<div class="columns">
				
				<!-- title_bar -->
					<div class="column is-8">
						<div class="columns">
						
						<!-- lecture thumbnail -->
							<div class="column is-4-tablet thumbnail_container ">
								<div class="image is_thumbnail">
									<img src="./img/main-img/<%= ldto.getL_img() %>" alt="<%= ldto.getL_title() %>">
								</div>
							</div>
						<!-- lecture thumbnail -->
						
						<!-- lecture title -->
							<div class="column course_title">
								<div>
									<h1><%= ldto.getL_title()%></h1>
									<div class="course_meta">
										<span>
										
<!-- 해당 강의 전체 평점 확인 후 style 수정(DB review TABLE select avg(rating) 가져오기(dao)) -->
										<!-- review 별점 전체 평균  -->
											<div class='rating_star'>
												<div class='star_solid' style="width: 97.16981132075472%">
												<% for(int i=1; i<6; i++){ %><i class="fa fa-star"></i><% } %>
												</div>
												<% for(int i=5; i>0; i--){ %><i class="far fa-star"></i><% } %>
											</div>
										<!-- review 별점 전체 평균  -->
<!-- 해당 강의 전체 평점 확인 후 style 수정(DB review TABLE select avg(rating) 가져오기(dao)) -->

<!-- 수강 후기 갯수(count) & 수강생 수(count) & 카테고리 확인 (DB)  -->	
											<small>(212개의 수강평)</small>
										</span>
										<br class="is-hidden-mobile">
										<small class="student_cnt">10943명의 수강생</small>
										<br>
										<small class="course_skills">
											<a href="/tag-curation/skill/57" target="_blank">Python</a>
										</small>
<!-- 수강 후기 갯수(count) & 수강생 수(count) & 카테고리 확인 (DB)  -->											
										
									</div>
								</div>
							</div>
						<!-- lecture title -->
						
						</div>
					</div>
				<!-- title_bar -->
				
				<!-- SideMenu -->
					<div class="column is-4 enroll_btn_container">
						<div class="course_floating_btn">
							<div class="course_floating_top">
								<div class="course_price_cover">
									<div class="course_price_section">



									
<!-- 유.무료 // 유로 - 금액 & 할인 & 시간 확인  + 수강 신청하기 & 찜 & 장바구니 추가  //  무료 - 바로 학습하기 ->강의실 이동 -->									
										<div class="course_price">
											<% if (ldto.getL_price() == 0) { %>
												무료
											<% } else { %>
											<script type="text/javascript">
												document.write(numberFormat(${ ldto.l_price }));					
											</script>원
											<% } %>
										</div>
									</div>
									<div class="course_btn_section">
										<div class="course_btn_cover">
											<% if (ldto.getL_price() == 0) { %>
											<button class="lecbtn is_fullwidth course_btn learn_btn is_primary">바로 학습하기</button>
											<% } else { %>
											<button class="lecbtn is_fullwidth course_btn learn_btn purchase_btn is_primary cartBtn">수강 신청</button>
											<% } %>
										</div>
									</div>
<!-- 유.무료 // 유로 - 금액 & 할인 & 시간 확인  + 수강 신청하기 & 찜 & 장바구니 추가  //  무료 - 바로 학습하기 ->강의실 이동 -->									

								</div>
								<div class="course_info_cover">
								
<!-- 강사 & 강의 수 & 총 시간 & 시청일 제한 & 수료증 확인 & 난이도 확인 -->								
									<div class="course_info_row">
										<i class="fas fa-user-tie"></i>지식공유자 · <a href="/instructors/57904/courses">김왼손의 왼손코딩</a>
									</div>
									<div class="course_info_row">
										<i class="far fa-play-circle"></i>50회 수업· 총 4시간 2분수업
									</div>
									<div class="course_info_row">
										<i class="far fa-clock"></i><span class="has-text-weight-bold">평생</span> 무제한 시청
									</div>
									<div class="course_info_row">
										<i class="fas fa-certificate"></i><span class="has-text-weight-bold">수료증 미발급</span> 강의
									</div>
									<div class="course_info_row">
										<i class="fas fa-signal"></i>수강 난이도 <span class="has-text-weight-bold">입문</span>
									</div>
<!-- 강사 & 강의 수 & 총 시간 & 시청일 제한 & 수료증 확인 & 난이도 확인 -->		




						
								</div>
							</div>
							<div class="course_relation_cover course_floating_bottom is-hidden-mobile">
								<div class="course_relation_tabs">
									<div class="course_relation_tab divactive" id="course_another_tab">
										다른 강의
									</div>
								</div>
								<div class="course_another_cover course_relation_list_cover divactive">
								
								
								
								
<!-- 같은 강사의 강의 리스트 2개 보여주기 & 더 보기(DB확인) -->								
									<div class="course_another_list">
									<%
							/*  action 페이지로 작성하기
								LectureDTO list_ldto = new Lecture;
								List  list_ldto.getlist ~~
								setAtrribute(lectureList ~
								
							*/
									%>
									<%
										/*
										List<LectureDTO> lectureList = (List<LectureDTO>)request.getAttribute("lectureList");
										
										int size = lectureList.size();
										int num = 0;
										
										if(size > 2) size = 2; //목록 2개만 사용
										*/
										int size = 1; // test용
										if(size != 0){
										/*
											while(size <= num;){
												LectureDTO ldto_list = lectureList.get(num);
										*/
									%>
										<!--
										<li>
											<a href="/Detail.le?l_number=<%-- <% ldto_list.getL_number %> --%>">
												<div class="el_thumbnail">
													<img src="./img/main-img/<%-- <%= ldto_list.getL_img() %> --%>" alt="<%-- <%= ldto_list.getL_title() %> --%>">
												</div>
												<div class="el_info">
													<div class="el_title"><%-- <%= ldto_list.getL_title() %> --%></div>
													<div class="el_subinfo">
														<div class="el_subtitle">
															<span><%-- <%= ldto_list.getL_price() %> --%></span>
														</div>
														<div class="el_metas">
															<i class="fas fa-user"></i> <%-- <%= DB에서 (subscribe)(DB, lectureDTO 추가) 가져오기  %> --%> <i class="fas fa-star"></i> <%-- <%= DB(reveiw table)에서 (rating_score) 가져오기  %> --%>
														</div>
													</div>
												</div>
											</a>
										</li>
										-->
										<li>
											<a href="/course/파이썬-예제">
												<div class="el_thumbnail">
													<img src="https://cdn.inflearn.com/wp-content/uploads/python4.jpg" alt="김왼손의 파이썬 예제 뽀개기">
												</div>
												<div class="el_info">
													<div class="el_title">김왼손의 파이썬 예제 뽀개기</div>
													<div class="el_subinfo">
														<div class="el_subtitle">
															<span>￦0</span>
														</div>
														<div class="el_metas">
															<i class="fas fa-user"></i> 1270 <i class="fas fa-star"></i> 4.9
														</div>
													</div>
												</div>
											</a>
										</li>
										<li>,
											<a href="/course/파이썬-입문-hello-coding">
												<div class="el_thumbnail">
													<img src="https://cdn.inflearn.com/wp-content/uploads/hello_coding.jpg" alt="[저자직강] Hello Coding 한입에 쏙 파이썬: 크리에이터 김왼손의 쉽고 빠른 파이썬 강의">
												</div>
												<div class="el_info">
													<div class="el_title">[저자직강] Hello Coding 한입에 쏙 파이썬: 크리에이터 김왼손의 쉽고 빠른 파이썬 강의</div>
													<div class="el_subinfo">
														<div class="el_subtitle">
															<span>￦0</span>
														</div>
														<div class="el_metas">
															<i class="fas fa-user"></i> 1963 <i class="fas fa-star"></i> 4.7
														</div>
													</div>
												</div>
											</a>
										</li>
										<%
										/*
												num++;
												}
										*/
										 %>
									<% } else { %>
										<div class="course_relation_no_result">아직 다른 강의가 없어요.</div>
									<% } %>
									</div>
									<% if(size != 0){ %>
									<div class="course_another_btn course_relation_btn">
										<a href="/instructors/57904/courses">+ 다른 강의 더보기</a>
									</div>
									<!-- 강의 목록 게시판 생성 시 주소 확인 후 변경
									<div class="course_another_btn course_relation_btn">
										<a href="/course?m_id=<%-- <% dto.m_id %> --%>">+ 다른 강의 더보기</a>
									</div>
									-->
									<% } %>
<!-- 같은 강사의 강의 리스트 2개 보여주기 & 더 보기(DB확인) -->
									
									
									
									
									
								</div>
							</div>
						</div>
					</div>
				<!-- SideMenu -->
					
				</div>
			</div>
		</section>
		<section class="course_description_container">
		
		<!-- 강의 상세 Navbar -->
			<div class="tabs">
				<ul class="container">
					<li class="tabs_li description is-active">
						<a href="#">강의소개</a>
					</li>
					<li class="tabs_li curriculum ">
						<a href="#curriculum">교육과정</a>
					</li>
					<li class="tabs_li reviews ">
						<a href="#reviews">수강후기</a>
					</li>
				</ul>
			</div>
		<!-- 강의 상세 Navbar -->
		
			<div class="container">
				<div class="course_description">
					<div class="columns">
						<div class="column is-8">
							<div class="content">
								<article class="description" id="description">
									<div class="course_summary description_sub">
										<h3 class="sub_heading has-icon">
											이 강의는 <i class="far fa-lightbulb"></i>
										</h3>
										
										
										
										

<!-- 강의 서술 소개 가져오기 (DB) - 태그 & 이미지 & 영상 로드 확인  -->										
										대학 새내기 시절 코딩이 너무 어려웠습니다. 잘해보려 아등바등 노력해 봤지만 매번 실패하다가 결국 미워하게
										돼버렸습니다. 지금 돌아보면 그렇게 미워할 정도는 아니었는데 말이죠. 지금도 저와 같은 고민을 하는 분들이 많을
										거라고 생각합니다. 그 때 그 시절 이런 강의가 있었으면 어땠을까 하는 마음으로 만든 강의가 바로
										미운코딩새끼입니다.미운코딩새끼는 코딩이 너무 어려워 포기한 분, 또는 코딩을 처음 접하는 분을 위한 강의입니다.
										파이썬이라는 프로그래밍 언어의 기초 문법을 쉽게 배울 수 있습니다. 코딩을 왜 배워야 하는지, 왜 필요한지에
										대해서 답을 주지는 않지만 코딩이란 이런 거구나, 파이썬이란 이런 거구나 하는 정도의 감을 잡을 수
										있습니다.코딩은 쉽지 않습니다. 그렇기 때문에 처음 시작하는 분들에게는 정말 쉬운 강의가 필요합니다.
										미운코딩새끼는 파이썬의 모든 것을 가르쳐 주지 않습니다. 대신 가장 중요하고 자주 쓰는 문법만 빠르고 가볍게
										다룹니다. 코딩을 처음 접하는 분들도 단숨에 끝낼 수 있습니다. 과정 후 파이썬을 더 공부할 마음이 든다면
										혼자서 얼마든지 공부할 수 있습니다.자, 그럼 이제 잉끼유튜버 김왼손과 함께 파이썬의 매력 속으로 풍덩
										빠져볼까요? :^)
									</div>
									<div class="body" itemprop="articleBody">
										<div>
											<div class="iframe_container" style="padding:56.25% 0 0 0; position: relative;">
												<iframe src="https://www.youtube.com/embed/UrwFkNRzzT4?list=PLGPF8gvWLYyontH0PECIUFFUdvATXWQEL?rel=0&amp;modestbranding=1&amp;vq=hd720"
													frameborder="0" allow="autoplay; encrypted-media" allowfullscreen="allowfullscreen"
													style="position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; height: 100%; width: 100%;" data-gtm-yt-inspected-8964582_7="true" id="669956749">
												</iframe>
											</div>
										</div>
										<div>
											<h2>김왼손의 한입에 쏙 파이썬 - 파이썬 입문</h2>
											한입에 쏙 파이썬은 미운코딩새끼의 업그레이드 버전 강의입니다. 자세한 내용은
											<a href="https://www.inflearn.com/course/%ED%8C%8C%EC%9D%B4%EC%8D%AC-%EC%9E%85%EB%AC%B8-hello-coding/">
												[저자직강]	Hello Coding 한입에 쏙 파이썬: 크리에이터 김왼손의 쉽고 빠른 파이썬 강의
											</a>
												에서 확인하실 수	있습니다.=====&nbsp;
												<div class="iframe_container" style="padding:56.25% 0 0 0; position: relative;">
													<iframe width="100%" height="100%" src="https://www.youtube.com/embed/c2mpe9Xcp0I?rel=0&amp;modestbranding=1&amp;vq=hd720" frameborder="0" allowfullscreen="allowfullscreen"
														style="position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; height: 100%; width: 100%;" data-gtm-yt-inspected-8964582_7="true" id="830993609">
													</iframe>
												</div>
											* 인스타그램 김왼손(<a href="https://www.instagram.com/lefty_khim/">@lefty_khim</a>)을 팔로우하세요!* 미운코딩새끼 전자책 ▶
											<a href="https://wikidocs.net/book/1421" target="_blank" rel="noopener">https://wikidocs.net/book/1421</a>
											* 더 많은 무료 강의 ▶ <a href="https://goo.gl/AwAwUT" target="_blank" rel="noopener">https://goo.gl/AwAwUT</a>
											<h3>
												<strong>
													<span style="color: #ff0000;">1.</span> 강좌 소개
												</strong>
											</h3>
											<ul>
												<li>코딩이 너무 어려워 미워지려고 하는 분들을 위한 강의입니다.</li>
												<li>파이썬의 기초를 쉽고 빠르고 가뿐하게 배울 수 있습니다.</li>
												<li>코딩을 처음 접하는 분들이 들어도 좋습니다.</li>
											</ul>
											대학 새내기 시절 코딩이 너무 어려웠습니다. 잘해보려 아등바등 노력해 봤지만 매번 실패하다가 결국 미워하게
											돼버렸습니다. 지금 돌아보면 그렇게 미워할 정도는 아니었는데 말이죠. 지금도 저와 같은 고민을 하는 분들이
											많을 거라고 생각합니다. 그 때 그 시절 이런 강의가 있었으면 어땠을까 하는 마음으로 만든 강의가 바로
											미운코딩새끼입니다.미운코딩새끼는 코딩이 너무 어려워 포기한 분, 또는 코딩을 처음 접하는 분을 위한
											강의입니다.?파이썬이라는 프로그래밍 언어의 기초 문법을 쉽게 배울 수 있습니다. 코딩을 왜 배워야 하는지, 왜
											필요한지에 대해서 답을 주지는 않지만?코딩이란 이런 거구나, 파이썬이란 이런 거구나 하는 정도의 감을 잡을
											수?있습니다.코딩은 쉽지 않습니다. 그렇기 때문에 처음 시작하는 분들에게는 정말 쉬운 강의가 필요합니다.
											미운코딩새끼는 파이썬의 모든 것을 가르쳐 주지 않습니다. 대신?가장?중요하고 자주 쓰는 문법만 빠르고 가볍게
											다룹니다. 코딩을 처음 접하는?분들도 단숨에 끝낼 수 있습니다. 과정 후 파이썬을 더 공부할 마음이 든다면
											혼자서 얼마든지 공부할 수 있습니다.자, 그럼 이제 잉끼유튜버 김왼손과 함께 파이썬의 매력
											속으로?풍덩?빠져볼까요? :^)
											<h3>
												<span style="color: #ff0000;">2.</span> 학습목표
											</h3>
											<ul>
												<li class="m_-7880752960710192036p1">
													<span class="m_-7880752960710192036s1">파이썬의 기초를 쉽게 배울 수 있습니다.</span>
												</li>
												<li class="m_-7880752960710192036p1">
													파이썬이 뭔지, 코딩이 뭔지 감을 잡게 됩니다.
												</li>
												<li class="m_-7880752960710192036p1">
													<span class="m_-7880752960710192036s1">혼자서도 코딩을 공부할 수 있는 법을 배웁니다.</span>
												</li>
												<li>다음 단계를 위한 준비를 할 수 있습니다.</li>
												<li>컴퓨터처럼 문제를 해결하는 방법을 배웁니다.</li>
												<li>나도 할 수 있다는 자신감을 얻게 됩니다.</li>
											</ul>
											<h3>
												<span style="color: #ff0000;">3.</span> 도움이 되는 분들
											</h3>
											<ul>
												<li class="m_-7880752960710192036p1">
													<span class="m_-7880752960710192036s1">코딩을 한 번도 해본 적 없는 분</span>
												</li>
												<li class="m_-7880752960710192036p1">
													<span class="m_-7880752960710192036s1">아무리 열심히 해도 코딩이 어려운 분</span>
												</li>
												<li>코딩이라는게 뭔지 맛보고 싶은 분</li>
												<li class="m_-7880752960710192036p1">
													반복되는 포기로 코딩이 미워지려고 하는 분
												</li>
											</ul>
											<h3>
												<span style="color: #ff0000;">4.</span> 강사 소개
											</h3>
											<p class="m_-7880752960710192036p1">
												<strong>
													<span class="m_-7880752960710192036s1">김왼손</span>
												</strong>
											</p>
											<blockquote>
												<p class="m_-7880752960710192036p1">
													<span class="m_-7880752960710192036s1">
														자동차에 세상을 보여주는 연구원. 좋아하는 일만 하며 재미있게 살고 싶은 요즘 젊은이. 가르치는 게 좋아 공부하는 선생이자, 배우는 게 좋아 가르치는 학생. 프로그래밍이라면 치를 떨던 프포자였지만,
														지금은 ‘<a href="https://www.youtube.com/channel/UC0h8NzL2vllvp3PjdoYSK4g?sub_confirmation=1" target="_blank" rel="noopener">김왼손의 왼손코딩</a>’을 운영하는 잉끼 유튜버.
													</span>
												</p>
											</blockquote>
										</div>
									</div>
<!-- 강의 서술 소개 가져오기 (DB) - 태그 & 이미지 & 영상 로드 확인  -->																			





								</article>
								<article class="course_instructor">
									<h3 class="sub_heading">지식공유자 소개</h3>
									<div class="profile">
									
									
									
									
									

<!-- 강사 아이콘 & 강의실 이름 정보 가져오기 - 회원 정보페이지에서 등록된 정보로 기본 출력 -->									
										<div class="course_instructor_profile">
											<figure class="image">
												<img class="is-rounded" src="https://cdn.inflearn.com/wp-content/uploads/avatars/57904/5a37dd40d732e-bpfull.png">
											</figure>
										</div>
										<h4 class="name">
											<a href="/instructors/57904/courses">김왼손의 왼손코딩</a>
										</h4>
<!-- 강사 아이콘 & 강의실 이름 정보 가져오기 - 회원 정보페이지에서 등록된 정보로 기본 출력 -->																			
										
										
										
										
										
									</div>
									<p class="introduce"></p>
								</article>
								<article class="curriculum" id="curriculum">
									<h3 class="sub_heading">교육과정</h3>
									<div class="curriculum_accordion unit_section_list">
										<div class="curriculum_header">
											<span class="section_all">모두 펼치기	</span>
										
										
										
										
											
<!-- 강의 수 & 시간 데이터 받아오기(DB 합쳐서 계산 or 계산값 가져오기) -->											
											<span class="curriculum_length">50 강의</span>
											<span class="curriculum_runtime">4시간 2분</span>
<!-- 강의 수 & 시간 데이터 받아오기(DB 합쳐서 계산 or 계산값 가져오기) -->											




										</div>
									
									
									
										
<!-- 반복문 / 배열 이용 교육과정 출력 div내부 확인 후 작업 할 것(DB - DB처리후 출력확인) -->										
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i class="fa fa-plus"></i></span>
													<span class="section_header_icon minus"><i class="fa fa-minus"></i></span>
													<span class="unit_title">섹션 0. 미운코딩새끼</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span>
													<span class="unit_time"><i class="far fa-clock"></i>04 : 00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8204">

													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">미운코딩새끼</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview">
															<button class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span>
																<span class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button>
														</span>
														<span class="unit_time is-hidden-mobile"><i class="far fa-clock"></i>04 : 00</span>
													</div>
												</a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i class="fa fa-plus"></i></span>
													<span class="section_header_icon minus"><i class="fa fa-minus"></i></span>
													<span class="unit_title">섹션 1. 프로그램과 프로그래밍</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span>
													<span class="unit_time"><i class="far fa-clock"></i>08 : 00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8206">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">프로그램과 프로그래밍</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview">
															<button class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span>
																<span class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button>
														</span>
														<span class="unit_time is-hidden-mobile"><i class="far fa-clock"></i>08 : 00</span>
													</div>
												</a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus">
													<i class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														2. 파이썬</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>17 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8208">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">왜 파이썬일까요?</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview">
															<button class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span>
																<span class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button>
														</span>
														<span class="unit_time is-hidden-mobile"><i class="far fa-clock"></i>10 : 00</span>
													</div>
												</a>
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8209">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">파이썬 설치하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div></a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														3. 입력과 출력</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>09 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8211"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">출력하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div></a><a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8212"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">입력하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div></a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														4. 변수와 이름</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>08 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8214"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">변수와
															변수이름</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>08 : 00</span>
													</div></a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														5. 프로그램의 기본재료</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">3 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>15 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8216"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">숫자형,
															문자형, 불린</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div></a><a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8217"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">리스트,
															튜플, 딕셔너리</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div></a><a class="unit_item" href="/course/파이썬-기초-강좌/lecture/8218"><div
														class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">자료형
															변환하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"><button
																class="button is-link is-small">
																<span class="is-hidden-mobile">미리보기</span><span
																	class="is-hidden-tablet"><i class="fa fa-smile-o"></i></span>
															</button></span> <span class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>02 : 00</span>
													</div></a>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														6. 주석</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>02 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">주석</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>02 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														7. 문자열</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">8 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>29 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">문자열</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">포맷팅</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>02 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">format()</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">인덱싱</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">슬라이싱</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">메서드</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">독스트링</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>01 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">end,
															이스케이프 코드</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														8. 리스트</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">4 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>18 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">리스트</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">값
															추가하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">인덱싱,
															슬라이싱</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">메서드</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														9. 튜플</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>05 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">튜플</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>02 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">패킹,
															언패킹</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														10. for</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">4 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>19 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">for</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">range()</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>02 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">for
															x 2</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">컴프리헨션</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														11. 연산자</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">7 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>35 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">할당</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>08 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">산술</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">%로
															홀짝 구분하기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">문자열
															연산자</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">비교</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">논리</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">멤버쉽</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														12. 조건문</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>12 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">if</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">else,
															elif</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														13. while</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>10 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">while</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">continue,
															break</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														14. 딕셔너리</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>10 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">딕셔너리</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>06 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">메서드</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														15. 함수</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">3 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>12 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">함수</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">함수를
															사용하는 이유</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">여러개
															돌려주기</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>04 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														16. 모듈</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">2 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>10 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">모듈</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>03 : 00</span>
													</div>
												</div>
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">랜덤</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>07 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														17. 객체</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>05 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">객체</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														18. 코딩 스타일</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>05 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">코딩
															스타일</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>05 : 00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="section_cover">
											<div class="section_header">
												<div class="section_header_left">
													<span class="section_header_icon plus"><i
														class="fa fa-plus"></i></span> <span
														class="section_header_icon minus"><i
														class="fa fa-minus"></i></span> <span class="unit_title">섹션
														19. 구글링 방법</span>
												</div>
												<div class="section_header_right is-hidden-mobile">
													<span class="unit_length">1 강의</span> <span
														class="unit_time"><i class="far fa-clock"></i>09 :
														00</span>
												</div>
											</div>
											<div class="lecture_cover">
												<div class="unit_item">
													<div class="unit_item_left">
														<i class="fa fa-play-circle-o"></i><span class="unit_title">구글링
															방법</span>
													</div>
													<div class="unit_item_right">
														<span class="unit_preview"></span> <span
															class="unit_time is-hidden-mobile"><i
															class="far fa-clock"></i>09 : 00</span>
													</div>
												</div>
											</div>
										</div>
<!-- 반복문 / 배열 이용 교육과정 출력 div내부 확인 후 작업 할 것(DB - DB처리후 출력확인) -->		




								
									</div>
								</article>
								<article class="course_date">
									<h4 class="sub_heading">공개 일자</h4>
									
									
									
									

<!-- 등록일 & 수정일 확인(DB) -->									
									<div>
										2017년 10월 13일<span class="last_update_date"> (마지막 업데이트 일자 : 2019년 2월 17일)</span>
									</div>
<!-- 등록일 & 수정일 확인(DB) -->																		
									
									
									
									
									
								</article>
								<article class="reviews" id="reviews">
									<h4 class="sub_heading">수강 후기</h4>
									<div class="review_summary">
										<div class="average">
										
										
										
										
										
										
<!-- (위쪽과 동일) 수강 평점 확인  -->										
											<span class="average_num">4.9</span>
<!-- (위쪽과 동일) 수강 평점 확인  -->										
											
											
											
											
											
<!-- (위쪽과 동일) 평점 확인 후 점수 만큼 반복문이용 별 개수 지정 -->										
											<span class="average_star"><div class='rating_star'>
													<div class='star_solid' style="width: 98%">
													<% for(int i=1; i<6; i++){ %>
														<svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
															<path fill="currentColor" d="M 259.3 17.8 L 194 150.2 47.9 171.5 c -26.2 3.8 -36.7 36.1 -17.7 54.6 l 105.7 103 -25 145.5 c -4.5 26.3 23.2 46 46.4 33.7 L 288 439.6 l 130.7 68.7 c 23.2 12.2 50.9 -7.4 46.4 -33.7
																						l -25 -145.5 105.7 -103 c 19 -18.5 8.5 -50.8 -17.7 -54.6 L 382 150.2 316.7 17.8 c -11.7 -23.6 -45.6 -23.9 -57.4 0 z"/>
														</svg>
													<%} %>
													</div>
													<% for(int i=5; i>0; i--){ %>
													<svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
														<path fill="currentColor" d="M 528.1 171.5 L 382 150.2 316.7 17.8 c -11.7 -23.6 -45.6 -23.9 -57.4 0 L 194 150.2 47.9 171.5 c -26.2 3.8 -36.7 36.1 -17.7 54.6 l 105.7 103 -25 145.5 c -4.5 26.3 23.2 46 46.4 33.7
																					L 288 439.6 l 130.7 68.7 c 23.2 12.2 50.9 -7.4 46.4-33.7 l -25 -145.5 105.7 -103 c 19 -18.5 8.5 -50.8 -17.7 -54.6 z
																					M 405.8 317.9 l 27.8 162 L 288 403.5 142.5 480 l 27.8 -162 L 52.5 203.1 l 162.7 -23.6 L 288 32 l 72.8 147.5 162.7 23.6 -117.7 114.8 z"/>
													</svg>
													<%} %>
												</div>
											</span>
<!-- (위쪽과 동일) 평점 확인 후 점수 만큼 반복문이용 별 개수 지정 -->		




<!-- (위쪽과 동일) 수강평 개수 확인 -->									
											<h5 class="review_total">212개의 수강평</h5>
<!-- (위쪽과 동일) 수강평 개수 확인 -->									





										</div>
										
										
										
										
										
<!-- 프로그래스 바  max값 = 전체 value의 합  각각value 가져오기 (DB)  -->			
										<div class="progress_bars">
											<div class="review_counting">
												<label>5점</label>
												<progress class="progress is-link" max="212" value="186"></progress>
											</div>
											<div class="review_counting">
												<label>4점</label>
												<progress class="progress is-link" max="212" value="22"></progress>
											</div>
											<div class="review_counting">
												<label>3점</label>
												<progress class="progress is-link" max="212" value="4"></progress>
											</div>
											<div class="review_counting">
												<label>2점</label>
												<progress class="progress is-link" max="212" value="0"></progress>
											</div>
											<div class="review_counting">
												<label>1점</label>
												<progress class="progress is-link" max="212" value="0"></progress>
											</div>
										</div>
<!-- 프로그래스 바  max값 = 전체 value의 합  각각value 가져오기 (DB)  -->										




									</div>
									<div class="review_list">
									
									
									
									
									
									

<!-- 회원별 리뷰 평점 & 리뷰 내용 & 작성일로부터의 기간 받아오기(DB) -->		
<!-- 리뷰 1 -->							
										<div class="article_container">
											<article class="media review_item">
												<figure class="media-left image is-64x64">
													<img src="../public/profile/default_profile.png" class="swiper-lazy is-rounded" alt="default_profile.png" />
													<div class="onload_placeholder"></div>
													<div class="swiper-lazy-preloader"></div>
												</figure>
												<div class="media-content">
													<div class="content">
														<span>
															<div class='rating_star'>
																<div class='star_solid'>
																<% for(int i=1; i<6; i++){ %>
																	<svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
																		<path fill="currentColor" d="M 259.3 17.8 L 194 150.2 47.9 171.5 c -26.2 3.8 -36.7 36.1 -17.7 54.6 l 105.7 103 -25 145.5 c -4.5 26.3 23.2 46 46.4 33.7 L 288 439.6 l 130.7 68.7 c 23.2 12.2 50.9 -7.4 46.4 -33.7
																									l -25 -145.5 105.7 -103 c 19 -18.5 8.5 -50.8 -17.7 -54.6 L 382 150.2 316.7 17.8 c -11.7 -23.6 -45.6 -23.9 -57.4 0 z" />
																	</svg>
																<%} %>
																</div>
																<% for(int i=5; i>0; i--){ %>
																<svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
																	<path fill="currentColor" d="M 528.1 171.5 L 382 150.2 316.7 17.8 c -11.7 -23.6, -45.6 -23.9, -57.4 0 L 194 150.2 47.9 171.5 c -26.2 3.8, -36.7 36.1, -17.7 54.6 l 105.7 103-25 145.5 c -4.5 26.3, 23.2 46, 46.4 33.7
																								L 288 439.6 l 130.7 68.7 c 23.2 12.2, 50.9 -7.4, 46.4 -33.7, l -25 -145.5 105.7 -103 c 19 -18.5, 8.5 -50.8, -17.7 -54.6 z
																								M 405.8 317.9 l 27.8 162 L 288 403.5 142.5 480 l 27.8 -162 L 52.5 203.1 l 162.7-23.6 L 288 32 l 72.8 147.5 162.7 23.6 -117.7 114.8 z" />
																</svg>
																<%} %>
															</div>
														</span>
										<!-- 회원 닉네임 -->				
														<strong>조수연</strong>
										<!-- 회원 닉네임 -->				
														<small class="review updated_at">
										<!--  -->				
															<span>8달 전</span>
															<span class="option"></span>
														</small>
														<br>
														<div class="review_body">
															너무 훌륭한 강의였어요. 정말 하나도 모르고 들어왔거든요. 다른 사람이 만들어둔 모듈을 보는데, 어머 알겠는거예요. 우와, 감동입니다.
															김왼손님, 진짜 감사합니다. 이제 시작이라서 한참은 더 헤메겠지만, 너무 재미있는 강의 였어요. 강추 백만개 날리고 싶어요~
														</div>
													</div>
													
												
												<!-- review_comment -->
													<div class="review_comments">
														<div class="article_container">
															<article class="media comment">
																<figure class="media-left image is-32x32">
																	<img loading="lazy" src="https://cdn.inflearn.com/wp-content/uploads/avatars/54224/59aca9480cbf0-bpfull.png" data-src="https://cdn.inflearn.com/wp-content/uploads/avatars/54224/59aca9480cbf0-bpfull.png" class="swiper-lazy" alt="장기효(캡틴판교)">
																	<div class="onload_placeholder"></div>
																	<div class="swiper-lazy-preloader"></div>
																</figure>
																<div class="media-content">
																	<div class="content">
																		<p>
																			<small>
																				<span class="author">
																					<strong>장기효(캡틴판교)</strong>
																				</span>
																				<span class="updated_at">2달 전</span>
																			</small>
																			<br>
																			<span class="article_body">
																				안녕하세요 세훈님, 도움이 되었던 부분에 대해 자세히 적어주셔서 감사합니다 :) 개인 프로젝트 하실 때 수업 내용들을 많이 참고하셔서 재밌게 개발하실 수 있으면 좋겠네요. 후속 강의들도 많은 관심 부탁드립니다 감사합니다 :)
																			</span>
																		</p>
																	</div>
																</div>
															</article>
														</div>
													</div>
												<!-- review_comment -->
													
												</div>
											</article>
										</div>
<!-- 리뷰 1 -->	
										<div class="article_container">
											<article class="media review_item">
												<figure class="media-left image is-64x64">
													<img loading="lazy" src="https://cdn.inflearn.com/public/main/profile/default_profile.png" data-src="https://cdn.inflearn.com/public/main/profile/default_profile.png" class="swiper-lazy is-rounded" alt="default_profile.png" />
													<div class="onload_placeholder"></div>
													<div class="swiper-lazy-preloader"></div>
												</figure>
												<div class="media-content">
													<div class="content">
														<span>
														<div class='rating_star'>
															<div class='star_solid'>
																<% for(int i=1; i<6; i++){ %>
																	<svg aria-hidden="true" data-prefix="fas" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
																		<path fill="currentColor" d="M 259.3 17.8 L 194 150.2 47.9 171.5 c -26.2 3.8 -36.7 36.1 -17.7 54.6 l 105.7 103 -25 145.5 c -4.5 26.3 23.2 46 46.4 33.7 L 288 439.6 l 130.7 68.7 c 23.2 12.2 50.9 -7.4 46.4 -33.7
																									l -25 -145.5 105.7 -103 c 19 -18.5 8.5 -50.8 -17.7 -54.6 L 382 150.2 316.7 17.8 c -11.7 -23.6 -45.6 -23.9 -57.4 0 z" />
																	</svg>
																<%} %>
																</div>
																<% for(int i=5; i>0; i--){ %>
																<svg aria-hidden="true" data-prefix="fal" data-icon="star" class="svg-inline--fa fa-star fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="16" height="16" data-value="<%= i %>">
																	<path fill="currentColor" d="M 528.1 171.5 L 382 150.2 316.7 17.8 c -11.7 -23.6, -45.6 -23.9, -57.4 0 L 194 150.2 47.9 171.5 c -26.2 3.8, -36.7 36.1, -17.7 54.6 l 105.7 103-25 145.5 c -4.5 26.3, 23.2 46, 46.4 33.7
																								L 288 439.6 l 130.7 68.7 c 23.2 12.2, 50.9 -7.4, 46.4 -33.7, l -25 -145.5 105.7 -103 c 19 -18.5, 8.5 -50.8, -17.7 -54.6 z
																								M 405.8 317.9 l 27.8 162 L 288 403.5 142.5 480 l 27.8 -162 L 52.5 203.1 l 162.7-23.6 L 288 32 l 72.8 147.5 162.7 23.6 -117.7 114.8 z" />
																</svg>
																<%} %>
														</div>
														</span>
														<strong>박찬영</strong>
														<small class="review updated_at">
														<span>7달 전</span>
															<span class="option"> </span>
														</small>
														<br>
														<div class="review_body">
															아무것도 모르고 의지만 있었던 저를 프로그램을 만들 수 있게 해 준 강의입니다. 무엇보다 재미있게 설명을 해 주십니다. 좋은 강의를 그것도 무료로
															들을 수 있어 추천합니다!
											
														</div>
													</div>
												</div>
											</article>
										</div>
<!-- 회원별 리뷰 평점 & 리뷰 내용 & 작성일로부터의 기간 받아오기(DB) -->																			
										
										
										
										
										
										
										<button class="is-fullwidth button is-link e_show_more_review">다른 수강평 보기</button>
									</div>
								</article>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		</main>
	</div>
	
	<script src="https://code.jquery.com/jquery-2.2.1.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
	
/* 스크롤 변경시 sticky 고정 */
		var t = $(".tabs");
		var navTop = t.offset().top;
		var e = 1;
		//var didScroll;
	//	alert("n : " + n + "\nw : " + window.pageYOffset);
	
		$(window).scroll(function(event){
			
			var offsetY = window.pageYOffset;
			
			if(offsetY < navTop){
				t.removeClass("sticky");
			}else if(offsetY > navTop){
				t.addClass("sticky")
			}
			
		});
/* 
		setInterval(function() {
		    if (didScroll) {
		    	stk();
		        didScroll = false;
		    }
		}, 100);
	
		function stk() {
			if(window.pageYOffset > navTop){
				if(1 !== e){
					e = 1;
					t.classList.remove("sticky");
				} else if(2 !== e) {
					e = 2;
					t.classList.add("sticky")
				}
			}
		}
		 */
/* 
		var didScroll;
		var lastScrollTop = 0;
		var delta = 300;
		var navbarHeight = $('tabs').outerHeight();
		
		$(window).scroll(function(event){
		    didScroll = true;
		});
	
		setInterval(function() {
		    if (didScroll) {
		        hasScrolled();
		        didScroll = false;
		    }
		}, 5);
	
		function hasScrolled() {
		    var st = $(this).scrollTop();
		    
		    if(Math.abs(lastScrollTop - st) <= delta)
		        return;
		    
		    if (st > lastScrollTop && st > navbarHeight){
		        $('.tabs').addClass('sticky');
		    } else {
		        if(st + $(window).height() < $(document).height()) {
		            $('.tabs').removeClass('sticky');
		        }
		    }
		    lastScrollTop = st;
		}
*/
/* 스크롤 변경시 sticky 고정 */


/* 스크롤 변경시 주소 변경
		var G = $.offset($("#description")).top,
	            Y = $.offset($("#curriculum")).top,
	            K = $.offset($("#reviews")).top;
	        J(location.hash.split("?")[0]), window.addEventListener("scroll", (function() {
	            var t = window.pageYOffset + 2 * window.innerHeight / 10;
	            J(t < G ? "#" : t < Y ? "#description" : t < K ? "#curriculum" : "#reviews")
	        }))
*/
        
/* 강의 목록 opne */
	    $(".section_cover").on('click', function () {
	    	var $this = $(this);
	    	var checkElement = $this.children();
	        
	    	if(checkElement.is(".section_header") && (checkElement.next().css('max-height') != '0px')){
	    		checkElement.removeClass('open');
	    		checkElement.next().css('max-height', '0');
	    	} else if(checkElement.is(".section_header") && (checkElement.next().css('max-height') == '0px')){
	    		checkElement.addClass('open');
	    		checkElement.next().css('max-height', 'max-content');
	    	}
	    });
/* 강의 목록 opne */
    
		
	});
	
	</script>
	
</body>
</html>