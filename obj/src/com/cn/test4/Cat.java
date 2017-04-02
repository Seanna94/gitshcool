package com.cn.test4;

public class Cat {
	
	static{
		System.out.println("Static Bolock");
	}
	
	public void eat(){
		System.out.println("eat");
	}
	
	public void eat(String food){
		System.out.println("eat  "+food);
	}

}
