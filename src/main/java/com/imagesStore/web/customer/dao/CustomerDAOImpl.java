package com.imagesStore.web.customer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.imagesStore.web.member.vo.MemberVO;

@Repository("memberDAO")
public class CustomerDAOImpl implements CustomerDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		  MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
		return vo;
	}
	
	package com.newlecture.web.service.jdbc;

	import java.sql.Connection;

	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.Date;
	import java.util.List;

	import javax.sql.DataSource;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Component;
	import org.springframework.stereotype.Service;

	import com.newlecture.web.entity.Notice;
	import com.newlecture.web.service.NoticeService;

	@Service
	public class JDBCNoticeService implements NoticeService{
		//	private String url = "jdbc:oracle:thin:@localhost:1521/xe";
		//	private String uid = "c##dodo";
		//	private String pwd = "tiger";
		//	private String driver = "oracle.jdbc.driver.OracleDriver";

		@Autowired
		private DataSource dataSource; //DataSource는 class가 아니라 interface이기 때문에 객체화 할 수 없음

		
		/*
		 * public void setDataSource(DataSource dataSource) { this.dataSource =
		 * dataSource; } //Autowired가 있으니까 setter 생략 가능
		 */

		public List<Notice> getList(int page, String field, String query) throws ClassNotFoundException, SQLException{

			int start = 1 + (page-1)*10;     // 1, 11, 21, 31, ..
			int end = 10*page; // 10, 20, 30, 40...

			String sql = "SELECT * FROM NOTICE_VIEW WHERE "+field+" LIKE ? AND NUM BETWEEN ? AND ?";	

			//Class.forName(driver);
			//Connection con = DriverManager.getConnection(url,uid, pwd);
			Connection con = dataSource.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%"+query+"%");
			st.setInt(2, start);
			st.setInt(3, end);
			ResultSet rs = st.executeQuery();

			List<Notice> list = new ArrayList<Notice>();

			while(rs.next()){
				int id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				Date regDate = rs.getDate("REGDATE");
				String content = rs.getString("CONTENT");
				int hit = rs.getInt("hit");
				String files = rs.getString("FILES");

				Notice notice = new Notice(
						id,
						title,
						writerId,
						regDate,
						content,
						hit,
						files
						);

				list.add(notice);

			}


			rs.close();
			st.close();
			con.close();

			return list;
		}

		// Scalar 
		public int getCount() throws ClassNotFoundException, SQLException {
			int count = 0;

			String sql = "SELECT COUNT(ID) COUNT FROM NOTICE";	

			//Class.forName(driver);
			//Connection con = DriverManager.getConnection(url,uid, pwd);
			Connection con = dataSource.getConnection();
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(sql);

			if(rs.next())
				count = rs.getInt("COUNT");		

			rs.close();
			st.close();
			con.close();

			return count;
		}

		public int insert(Notice notice) throws SQLException, ClassNotFoundException {
			String title = notice.getTitle();
			String writerId = notice.getWriterId();
			String content = notice.getContent();
			String files = notice.getFiles();

			String url = "jdbc:oracle:thin:@localhost:1521/xe";
			String sql = "INSERT INTO notice (    " + 
					"    title," + 
					"    writer_id," + 
					"    content," + 
					"    files" + 
					") VALUES (?,?,?,?)";	

			//Class.forName(driver);
			//Connection con = DriverManager.getConnection(url,uid, pwd);
			Connection con = dataSource.getConnection();          
			//Statement st = con.createStatement();
			//st.ex....(sql)
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, writerId);
			st.setString(3, content);
			st.setString(4, files);

			int result = st.executeUpdate();


			st.close();
			con.close();

			return result;
		}

		public int update(Notice notice) throws SQLException, ClassNotFoundException {
			String title = notice.getTitle();
			String content = notice.getContent();
			String files = notice.getFiles();
			int id = notice.getId();

			String url = "jdbc:oracle:thin:@localhost:1521/xe";
			String sql = "UPDATE NOTICE " + 
					"SET" + 
					"    TITLE=?," + 
					"    CONTENT=?," + 
					"    FILES=?" + 
					"WHERE ID=?";

			//Class.forName(driver);
			//Connection con = DriverManager.getConnection(url,uid, pwd);
			Connection con = dataSource.getConnection();                 
			//Statement st = con.createStatement();
			//st.ex....(sql)
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, files);
			st.setInt(4, id);

			int result = st.executeUpdate();

			st.close();
			con.close();

			return result;
		}

		public int delete(int id) throws ClassNotFoundException, SQLException {

			String url = "jdbc:oracle:thin:@localhost:1521/xe";
			String sql = "DELETE NOTICE WHERE ID=?";

			//Class.forName(driver);
			//Connection con = DriverManager.getConnection(url,uid, pwd);
			Connection con = dataSource.getConnection();           
			//Statement st = con.createStatement();
			//st.ex....(sql)
			PreparedStatement st = con.prepareStatement(sql);		
			st.setInt(1, id);

			int result = st.executeUpdate();

			st.close();
			con.close();

			return result;
		}


	}


}
