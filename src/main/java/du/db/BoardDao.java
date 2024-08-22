package du.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class BoardDao {
    SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
    SqlSession session;

    public BoardDao() {
        session = sqlsession_f.openSession(true);
    }

    public int getNumRecords() {
        return session.selectOne("BoardMapper.getNumRecords");
    }

    public List<BoardDto> selectList(int start, int listSize) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", start);
        map.put("listSize", start + listSize - 1);
        return session.selectList("BoardMapper.selectList", map);
    }

    private void updateHits(int num) {
        session.update("BoardMapper.updateHits", num);
    }

    public BoardDto selectOne(int num, boolean hitsIncreased) {
        if (hitsIncreased) {
            updateHits(num);
        }
        return session.selectOne("BoardMapper.selectOne", num);
    }

    public void insertOne(BoardDto board) {
        session.insert("BoardMapper.insertBoard", board);
    }

    public void updateOne(BoardDto board) {
        session.update("BoardMapper.updateBoard", board);
    }

    public boolean deleteOne(int num) {
        try {
            session.delete("BoardMapper.deleteBoard", num);
        } catch (Exception e) {
            return true;
        }
        return false;
    }
}
