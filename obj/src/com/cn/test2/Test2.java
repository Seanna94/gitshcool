package com.cn.test2;

public class Test2 {
	
	public static void main(String[] args) {
	
		//多维数组的赋值与遍历
		
		int[][] arr=new int[5][5];
		
		int count =1;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				arr[i][j]=count++;
			}
		}
	
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				System.out.print(arr[i][j]+" ");
			}
			System.out.println();
		}
		
		//多维数组
//		int[][] arr=new int [4][5];
//		arr[0][0]=1;
//		arr[1][0]=2;	
//		arr[0][1]=9;
//		arr[1][1]=7;
//		arr[2][1]=6;
		
//		System.out.println(arr[0][0]);
//		System.out.println(arr[1][0]);
//		System.out.println(arr[2][0]);
//		System.out.println(arr[3][0]);
//		System.out.println(arr[1][1]);
		
	
		
	}

}

















