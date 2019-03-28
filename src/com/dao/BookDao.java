package com.dao;

import java.util.List;

import com.pojo.Book;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.sun.swing.internal.plaf.basic.resources.basic;
import com.util.DButil;

public class BookDao {

	//根据书名得到该书ID
	public String findidbyname(String bname){
		String sql = "select bid from book where bname = ?";
		List<Book> books = DButil.query(Book.class, sql, bname);
		String bid = books.get(0).getBid();
		return bid;
	}
		
	//得到所有书籍名称和ID
	public List<Book> findshuming(){
		String sql = "select bid,bname from book";
		List<Book> books = DButil.query(Book.class,sql);
		return books;
		
	}
	// 根据书的id找到相应信息，显示到相应书的详情页面
	public Book findbyid(String bid) {
		String sql = "select bid,b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click from book where bid = ?";
		List<Book> list = DButil.query(Book.class, sql, bid);
		Book book = list.get(0);
		return book;
	}

	// 得到总条数
	public int getCount() {
		String sql = "select count(*) from book";
		int count = DButil.uniqueQuery(sql);
		return count;
	}

	// 根据bc_id查询这一类的书籍
	public List<Book> fingbybc_id(String bc_id) {
		String sql = "select bname,aid,bcount,bid from book where bc_id = ?";
		List<Book> list = DButil.query(Book.class, sql, bc_id);
		return list;
	}

	// 查询所有书籍
	public List<Book> findall() {
		String sql = "select b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click,bid from book";
		List<Book> list = DButil.query(Book.class, sql);
		return list;
	}

	// 分页查询所有书籍
	public List<Book> findall(int page, int size) {
		String sql = "select b_img,bname,bintroduction,aid,bc_id,bcount,bccount,b_click,bid from book limit ?,?";
		List<Book> list = DButil.query(Book.class, sql, (page - 1) * size, size);
		return list;
	}

	// 查询点击榜信息，根据点击数降序排序，取前十条
	public List<Book> finddjb() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by b_click desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询点击榜11111信息，根据点击数降序排序，取前十条
	public List<Book> finddjb1() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by bcount desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询点击榜22222信息，根据点击数降序排序，取前十条
	public List<Book> finddjb2() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bc_id from book order by b_img desc limit 10";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 根据字数查询相关信息
	public List<Book> findbyzishu(String min, String max) {
		String sql = "select bname,aid,bcount from book where bcount > ? and bcount < ?";
		List<Book> list = DButil.query(Book.class, sql, min, max);
		return list;
	}

	// 查询点击量前14本书，放到本周强推显示
	public List<Book> findqtb() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book order by b_click desc limit 14";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询出主页第一个六图
	public List<Book> findliu1() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book where bid > 14 and bid < 21";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询出主页第2个六图
	public List<Book> findliu2() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img from book where bid > 20 and bid < 27";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询主页分类推荐的六本书
	public List<Book> findliu3() {
		String sql = "select b_click,bname,bid,aid,bc_id,b_img,bintroduction from book where bid > 26 and bid < 33";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询主页底部作品更新
	public List<Book> findb17() {
		String sql = "select bname,bcount,aid,bc_id,bid from book order by b_click desc limit 17";
		List<Book> books = DButil.query(Book.class, sql);
		return books;
	}

	// 查询
	public List<Book> sousuo(String key) {
		String sql = "select bname,bcount,aid,b_img,bid,bintroduction from book where bname like ?";
		System.out.println(sql);
		List<Book> books = DButil.query(Book.class, sql, "%" + key + "%");
		return books;
	}

	// 新增书籍信息
	public void xinzeng(String bid, String bname, int bcount, int bccount,
			String aid, String bintroduction, String b_img, int b_click,
			String bc_id) {
		String sql = "insert into book values(?,?,?,?,?,?,?,?,?)";
		int n = DButil.zsg(sql, bid,bname,bcount,bccount,aid,bintroduction,b_img,0,bc_id);
		if(n==1){
			System.out.println("新增成功");
		}
	}
	//修改图书信息
	public void update(String bid, String bname, int bcount, int bccount,
			String aid, String bintroduction, String b_img, int b_click,
			String bc_id){
		String sql = "update book set bname=?,bcount=?,bccount=?,b_img=?,bintroduction=bintroduction,b_click=? where bid = ?";
		int n  = DButil.zsg(sql, bname,bcount,bccount,b_img,b_click,bid);
		if(n==1){
			System.out.println("修改成功");
		}
	}

	// 删除书籍信息
	public void del(String bid) {
		String sql = "delete from book where bid = ?";
		int n = DButil.zsg(sql, bid);
		if (n == 1)
			System.out.println("删除成功");
	}

}
