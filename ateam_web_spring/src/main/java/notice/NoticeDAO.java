package notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import common.BoardVO;

@Repository
public class NoticeDAO implements NoticeService{
	
	@Autowired private SqlSession sql;

	@Override
	public void notice_insert(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<BoardVO> notice_list() {
		// TODO Auto-generated method stub
		return sql.selectList("notice.mapper.list");
	}


	@Override
	public List<BoardVO> notice_view(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void notice_update(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void notice_delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NoticePage notice_list(NoticePage page) {
		page.setTotalList(sql.selectOne("notice.mapper.totalList", page));
		page.setList( sql.selectList("notice.mapper.list", page));
		return page;
	}

}
