package frige;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FrigeDAO implements FrigeService {
	@Autowired private SqlSession sql;

	@Override
	public List<FrigeVO> frige_list(HashMap<String, Object> map) {
		return sql.selectList("frige.mapper.frige_list", map);
	}

	@Override
	public FrigeVO frige_detail(int content_list_id) {
		return sql.selectOne("frige.mapper.frige_detail", content_list_id);
	}

	@Override
	public int frige_update(FrigeVO vo) {
		return sql.update("frige.mapper.frige_update", vo);
	}

	@Override
	public int frige_delete(int content_list_id) {
		return sql.delete("frige.mapper.frige_delete", content_list_id);
	}

	@Override
	public List<Integer> getLifeEndList(long user_id) {
		return sql.selectList("frige.mapper.getLifeEndList", user_id);
	}

	@Override
	public List<Integer> getNewContentList(long user_id) {
		return sql.selectList("frige.mapper.getNewContentList", user_id);
	}
}
