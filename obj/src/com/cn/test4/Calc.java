package com.cn.test4;

public class Calc {
	public int sum(int... sum){
		int s=0;
		for (int i : sum) {
			s +=i;
		}
		return s;
	}

}
