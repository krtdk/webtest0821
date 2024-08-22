package du.db;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import mybatis.SqlMapConfig;

public class MemberDao {

	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();

	public int isMember(MemberDto memberDto) {
		try (SqlSession session = sqlsession_f.openSession(true)) {
			MemberMapper mm = session.getMapper(MemberMapper.class);
			return mm.isMember(memberDto);
		}
	}
	
	public MemberDto findMember(MemberDto memberDto) {
		try (SqlSession session = sqlsession_f.openSession(true)) {
			MemberMapper mm = session.getMapper(MemberMapper.class);
			return mm.findMember(memberDto);
		}
	}
	public MemberDto createMember(MemberDto memberDto) {
		try (SqlSession session = sqlsession_f.openSession(true)) {
			MemberMapper mm = session.getMapper(MemberMapper.class);
			return mm.createMember(memberDto);
		}
	}
}
