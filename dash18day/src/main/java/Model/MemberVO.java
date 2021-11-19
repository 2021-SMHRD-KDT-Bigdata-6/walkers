package Model;

public class MemberVO {
	private String id;
	private String pw;
	private String nick;
	private String gender;
	private String age;
	private String date;	// ���Գ�¥
	private int walk_all; // ��ü ������
	private int walk_today; // ���� ������
	private String walk_date;	// ������¥
	
	public MemberVO(String id, String pw, String nick, String gender, String age, String date, int walk_all, int walk_today) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.gender = gender;
		this.age = age;
		this.date = date;
		this.walk_all = walk_all;
		this.walk_today = walk_today;
	}

	public MemberVO(String id, String pw, String nick, String gender, String age, String date) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.gender = gender;
		this.age = age;
		this.date = date;
	}
	
	public MemberVO(String id, String nick, String gender, String age, String date) {
		this.id = id;
		this.nick = nick;
		this.gender = gender;
		this.age = age;
		this.date = date;
	}
	public MemberVO(String id, String pw, String nick) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
	}
	public MemberVO(String id, int walk_all) {
		this.id = id;
		this.walk_all = walk_all;
	}
	
	public MemberVO(int walk_today) {
		this.walk_today = walk_today;
	}
	
	public MemberVO(String id, String walk_date) {
		this.id = id;
		this.walk_date = walk_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public int getwalk_all() {
		return walk_all;
	}

	public void setwalk_all(int walk_all) {
		this.walk_all = walk_all;
	}

	public int getWalk_today() {
		return walk_today;
	}

	public void setWalk_today(int walk_today) {
		this.walk_today = walk_today;
	}

	public String getWalk_date() {
		return walk_date;
	}

	public void setWalk_date(String walk_date) {
		this.walk_date = walk_date;
	}
	
	

}
