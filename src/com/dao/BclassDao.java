package com.dao;

import java.util.List;

import com.pojo.Bclass;
import com.util.DButil;

public class BclassDao {
	
	//��ҳ��ѯ
	public List<Bclass> findall(int page,int size){
		String sql = "select bc_id,bcname,bcname1 from bclass limit ?,?";
		List<Bclass> bclasses = DButil.query(Bclass.class, sql, (page-1)*size,size);
		return bclasses;
	}
	//���������id�ҵ����Ӧ������
	public Bclass findbyid(String bc_id){
		String sql = "select bcname,bc_id from bclass where bc_id = ?";
		List<Bclass> list = DButil.query(Bclass.class, sql, bc_id);
		Bclass bclass = list.get(0);
		return bclass;
	}
	
	//���������id�ҵ����Ӧ���������
		public Bclass findnamebyid(String bc_id){
			String sql = "select bcname1 from bclass where bc_id = ?";
			List<Bclass> list = DButil.query(Bclass.class, sql, bc_id);
			Bclass bclass = list.get(0);
			return bclass;
		}
		
	//�����鼮�������Ƶõ��鼮���ͱ��
	public String bc_id(String bcname){
		String sql = "select bc_id from bclass where bcname = ?";
		List<Bclass> bclasses = DButil.query(Bclass.class, sql, bcname);
		String bc_id = bclasses.get(0).getBc_id();
		return bc_id;
	}
	
	//�õ�������
	public int getCount() {
		String sql = "select count(*) from bclass";
		int count = DButil.uniqueQuery(sql);
		return count;
	}
	
	//ɾ���鼮���
	public int delbclass(String bc_id){
		String sql = "delete from bclass where bc_id = ?";
		int n = DButil.zsg(sql, bc_id);
		return n ;
	}
	//�����鼮���
	public int xinzeng(String bc_id,String bcname,String bcname1){
		String sql = "insert into bclass values(?,?,?)";
		int n = DButil.zsg(sql, bc_id,bcname,bcname1);
		return n;
	}
	//�޸��鼮�����Ϣ
	public int xiugai(String bc_id,String bcname,String bcname1){
		String sql = "update bclass set bcname = ?,bcname1 = ? where bc_id=?";
		int n = DButil.zsg(sql,bcname,bcname1,bc_id);
		return n;
	}
}

