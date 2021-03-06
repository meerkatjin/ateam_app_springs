package notice;

import java.util.List;

import common.BoardVO;

public interface NoticeService {
	
	void notice_insert(BoardVO vo);	//공지글 저장
	List<BoardVO> notice_list();	//공지글 조회
	NoticePage notice_list(NoticePage page);//페이지단위로 공지글목록조회
	BoardVO notice_view(int board_no);	//공지글 상세보기
	void notice_read(int board_no);//공지글 조회수
	void notice_update(BoardVO vo);	//공지글 변경저장
	void notice_delete(int board_no);	//공지글 삭제
	List<BoardVO> gethome();	//메인화면에 작성될 공지글
}
