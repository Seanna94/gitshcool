package com.cn.test3;

public class Cat {
	
	public String name;
	
	public void run(){
		System.out.println("跳");
	}
	
	public void jump(){
		System.out.println("调");
		run();
	}
	
	/**
	 * 获取小猫的体重
	 * @return weigth
	 */
	public int getWeight(){
		int weight =4;
		return weight;
	}

}
