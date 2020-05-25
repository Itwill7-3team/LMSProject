package com.blog.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.notice.db.NoticeDAO;
import com.notice.db.NoticeDTO;


public class BlogDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= new ActionForward();
		System.out.println("@@@ NoticeDeleteAction_execute() 실행");
		
		//파라미터 num/ pageNum저장
		int num=Integer.parseInt(request.getParameter("num"));
		String pageNum=request.getParameter("pageNum");
				
		//NoticeDAO 객체 생성
		NoticeDAO ndao= new NoticeDAO();
		
		//deleteBoard(num)
		int result=ndao.deleteNotice(num);
		
		//자바스크립트로 페이지 처리
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		
		if(result==-1){
			out.print("<script>");
			out.print("alert('게시판 글 없음');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
			
			return null;
		}
		//result==1				
		out.print("<script>");
		out.print("alert('글 삭제 성공');");
		out.print("location.href='./notice.bo?pageNum="+pageNum+"'");
		out.print("</script>");
		out.close();
		
		return null;	
	}

}
