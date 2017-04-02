package com.cn.test4;

public class test4 {
	public static void main(String[] args) {
		//可变参数
		Calc c =new Calc();
		int s=c.sum(1,2,3,4,5,6);
		System.out.println(s);
		
		
		//构造方法
//		Dog dog=new Dog("tom",5);
//		
//		new Dog();
		System.out.println("1");
		Cat cat1 =new Cat();
		cat1.eat();
		cat1.eat("had");
		
	}

}
