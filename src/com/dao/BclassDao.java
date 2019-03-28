package com.dao;

import java.util.List;

import com.pojo.Bclass;
import com.util.DButil;

public class BclassDao {
	
	//分页查询
	public List<Bclass> findall(int page,int size){
		String sql = "select bc_id,bcname,bcname1 from bclass limit ?,?";
		List<Bclass> bclasses = DButil.query(Bclass.class, sql, (page-1)*size,size);
		return bclasses;
	}
	//根据书的类id找到书对应的类名
	public Bclass findbyid(String bc_id){
		String sql = "select bcname,bc_id from bclass where bc_id = ?";
		List<Bclass> list = DButil.query(Bclass.class, sql, bc_id);
		Bclass bclass = list.get(0);
		return bclass;
	}
	
	//根据书的类id找到书对应的类名简称
		public Bclass findnamebyid(String bc_id){
			String sql = "select bcname1 from bclass where bc_id = ?";
			List<Bclass> list = DButil.query(Bclass.class, sql, bc_id);
			Bclass bclass = list.get(0);
			return bclass;
		}
		
	//根据书籍类型名称得到书籍类型编号
	public String bc_id(String bcname){
		String sql = "select bc_id from bclass where bcname = ?";
		List<Bclass> bclasses = DButil.query(Bclass.class, sql, bcname);
		String bc_id = bclasses.get(0).getBc_id();
		return bc_id;
	}
	
	//得到总条数
	public int getCount() {
		String sql = "select count(*) from bclass";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
	
	//删除书籍类别
	public int delbclass(String bc_id){
		String sql = "delete from bclass where bc_id = ?";
		int n = DButil.zsg(sql, bc_id);
		return n ;
	}
	//新增书籍类别
	public int xinzeng(String bc_id,String bcname,String bcname1){
		String sql = "insert into bclass values(?,?,?)";
		int n = DButil.zsg(sql, bc_id,bcname,bcname1);
		return n;
	}
	//修改书籍类别信息
	public int xiugai(String bc_id,String bcname,String bcname1){
		String sql = "update bclass set bcname = ?,bcname1 = ? where bc_id=?";
		int n = DButil.zsg(sql,bcname,bcname1,bc_id);
		return n;
	}
}

