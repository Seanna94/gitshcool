package com.cn.test4;

public class Dog {
	private String name;
	private int age;
	
	public String getName() {
		return name;
	}
	
	public int getAge() {
		return age;
	}

	public Dog(String name,int age){
		System.out.println("new Dog");
		this.name=name;
		this.age=age;
	}

	public Dog(){
		System.out.println("hello Dog");
	}
}
