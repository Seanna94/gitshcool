package com.cn.test5;

public class Dog<Static> {
	//饿汉式
//	private static Dog d= new Dog();
//	
//	private Dog(){
//		System.out.println("构造方法！");
//	}
//	
//	public static Dog getDog(){
//		
//		return d;
//	}
	
	//懒汉式
	private static Dog d;
	private Dog(){
		System.out.println("懒汉式");
	}
	
	public static Dog getDog(){
		if(d ==null){
			d=new Dog();
		}
		return d;
	}

}
