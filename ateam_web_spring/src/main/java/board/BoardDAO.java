package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import common.BoardVO;
import notice.NoticePage;

@Repository
public class BoardDAO implements BoardService{
	
	@Autowired private SqlSession sql;

	@Override
	public void board_insert(BoardVO vo) {
		sql.insert("board.mapper.insert", vo);
		
	}

	@Override
	public List<BoardVO> board_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticePage board_list(NoticePage page) {
		page.setTotalList( sql.selectOne("board.mapper.totalList", page) );
		page.setList( sql.selectList("board.mapper.list", page) );
		return page;
	}

	@Override
	public BoardVO board_view(int board_no) {
		// TODO Auto-generated method stub
		return sql.selectOne("board.mapper.view", board_no);
	}

	@Override
	public void board_read(int board_no) {
		sql.update("board.mapper.read", board_no);
		
	}

	@Override
	public void board_update(BoardVO vo) {
		sql.update("board.mapper.update", vo);
		
	}

	@Override
	public void board_delete(int board_no) {
		sql.delete("board.mapper.delete", board_no);
		
	}

}