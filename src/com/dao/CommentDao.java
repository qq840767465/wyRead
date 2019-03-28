package com.dao;

import java.sql.Date;
import java.util.List;

import com.pojo.Comment;
import com.util.DButil;

public class CommentDao {

	//得到某一条评论的点赞数
	public int thumbs(int cid){
		String sql = "select thumbs from comment where cid = ?";
		List<Comment> comments = DButil.query(Comment.class, sql, cid);
		int n = comments.get(0).getThumbs();
		return n;
	}
	//删除评论
	public int del(int cid){
		String sql = "delete from comment where cid = ?";
		int n = DButil.zsg(sql, cid);
		return n ;
	}
	//查询某一本书的所有评论
	public List<Comment> findbybid(String bid,int page,int size){
		
		String sql = "select cid,bid,content,uid,thumbs,ptime from comment where bid = ? order by ptime desc limit ?,?";
		List<Comment> comments = DButil.query(Comment.class, sql, bid,(page-1)*size,size);
		return comments;
	}
	
	//添加点赞数
	public int addthumbs(int cid){
		String sql = "update comment set thumbs = thumbs+1 where cid = ?";
		int n  =  DButil.zsg(sql,cid);
		return n;
	}
	
	//添加评论
	public void addpinglun(String content,String uid,String bid,String ptime){
		String sql = "insert into comment(content,uid,bid,thumbs,ptime) values(?,?,?,0,?)";
		DButil.zsg(sql,content,uid,bid,ptime);
	}
	
	//分页查询出所有评论信息
	public List<Comment> findall(int page,int size){
		String sql = "select cid,content,uid,bid,thumbs,ptime from comment order by bid limit ?,? ";
		List<Comment> comments = DButil.query(Comment.class, sql,(page-1)*size,size);
		return comments;
	}
	
	//得到总条数
	public int getCount() {
		String sql = "select count(*) from comment";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
}
