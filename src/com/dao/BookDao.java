package com.dao;

import java.util.List;

import com.pojo.Book;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.sun.swing.internal.plaf.basic.resources.basic;
import com.util.DButil;

public class BookDao {

	//���������õ�����ID
	public String findidbyname(String bname){
		String sql = "select bid from book where bname = ?";
		List<Book> books = DButil.query(Book.class, sql, bname);
		String bid = books.get(0).getBid();
		return bid;
	}
		
	//�õ������鼮���ƺ�ID
	public List<Book> findshuming(){
		String sql = "select bid,bname from book";
		List<Book> books = DButil.query(Book.class,sql);
		return books;
		
	}
	// �������id�ҵ���Ӧ��Ϣ����ʾ����Ӧ�������ҳ��
	public Book findbyid(String bid) {
		String sql = "select bid,b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click from book where bid = ?";
		List<Book> list = DButil.query(Book.class, sql, bid);
		Book book = list.get(0);
		return book;
	}

	// �õ�������
	public int getCount() {
		String sql = "select count(*) from book";
		int count = DButil.uniqueQuery(sql);
		return count;
	}

	// ����bc_id��ѯ��һ����鼮
	public List<Book> fingbybc_id(String bc_id) {
		String sql = "select bname,aid,bcount,bid from book where bc_id = ?";
		List<Book> list = DButil.query(Book.class, sql, bc_id);
		return list;
	}

	// ��ѯ�����鼮
	public List<Book> findall() {
		String sql = "select b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click,bid from book";
		List<Book> list = DButil.query(Book.class, sql);
		return list;
	}

	// ��ҳ��ѯ�����鼮
	public List<Book> findall(int page, int size) {
		String sql = "select b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click,bid from book limit ?,?";
		List<Book> list = DButil.query(Book.class, sql, (page - 1) * size, size);
		return list;
	}

	// ��ѯ�������Ϣ�����ݵ������������ȡǰʮ��
	public List<Book> finddjb() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by b_click desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ�����11111��Ϣ�����ݵ������������ȡǰʮ��
	public List<Book> finddjb1() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by bcount desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ�����22222��Ϣ�����ݵ������������ȡǰʮ��
	public List<Book> finddjb2() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by b_img desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ����������ѯ�����Ϣ
	public List<Book> findbyzishu(String min, String max) {
		String sql = "select bname,aid,bcount from book where bcount > ? and bcount < ?";
		List<Book> list = DButil.query(Book.class, sql, min, max);
		return list;
	}

	// ��ѯ�����ǰ14���飬�ŵ�����ǿ����ʾ
	public List<Book> findqtb() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book order by b_click desc limit 14";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ����ҳ��һ����ͼ
	public List<Book> findliu1() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book where bid > 14 and bid < 21";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ����ҳ��2����ͼ
	public List<Book> findliu2() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book where bid > 20 and bid < 27";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ��ҳ�����Ƽ���������
	public List<Book> findliu3() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bintroduction from book where bid > 26 and bid < 33";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ��ҳ�ײ���Ʒ����
	public List<Book> findb17() {
		String sql = "select bname,bcount,aid,bc_id,bid from book order by b_click desc limit 17";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// ��ѯ
	public List<Book> sousuo(String key) {
		String sql = "select bname,bcount,aid,b_img,bid,bintroduction from book where bname like ?";
		System.out.println(sql);
		List<Book> books = DButil.query(Book.class, sql, "%" + key + "%");
		return books;
	}

	// �����鼮��Ϣ
	public void xinzeng(String bid, String bname, int bcount, int bccount,
			String aid, String bintroduction, String b_img, int b_click,
			String bc_id) {
		String sql = "insert into book values(?,?,?,?,?,?,?,?,?)";
		int n = DButil.zsg(sql, bid,bname,bcount,bccount,aid,bintroduction,b_img,0,bc_id);
		if(n==1){
			System.out.println("�����ɹ�");
		}
	}
	//�޸�ͼ����Ϣ
	public void update(String bid, String bname, int bcount, int bccount,
			String aid, String bintroduction, String b_img, int b_click,
			String bc_id){
		String sql = "update book set bname=?,bcount=?,bccount=?,b_img=?,bintroduction=bintroduction,b_click=? where bid = ?";
		int n  = DButil.zsg(sql, bname,bcount,bccount,b_img,b_click,bid);
		if(n==1){
			System.out.println("�޸ĳɹ�");
		}
	}

	// ɾ���鼮��Ϣ
	public void del(String bid) {
		String sql = "delete from book where bid = ?";
		int n = DButil.zsg(sql, bid);
		if (n == 1)
			System.out.println("ɾ���ɹ�");
	}

}
