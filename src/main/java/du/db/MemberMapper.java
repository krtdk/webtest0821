package du.db;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface MemberMapper {
	@Select("select count(*) from members where email = #{email} and password = #{password}")
	public int isMember(MemberDto memberDto);
	
	@Select("select * from members where email = #{email} and password = #{password}")
	public MemberDto findMember(MemberDto memberDto);
	
	@Select("insert into members values (members_seq.nextval, #{name}, #{email}, #{password}, sysdate)")
	public MemberDto createMember(MemberDto memberDto);
}
