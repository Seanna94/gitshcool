package com.cn.one;

public class Login {

	public static void main(String[] args) {
		
		//冒泡排序
//		int[] array={3,7,12,43,21};
//		for (int i = 0; i < array.length-1; i++) {
//			for (int j = 0; j < array.length-1-i; j++) {
//				if(array[j]>array[j+1]){
//					int temp=array[j];
//					array[j]=array[j+1];
//					array[j+1]=temp;
//				}
//			}
//		}
//		for (int i : array) {
//			System.out.println(i);
//		}
//		
		
		
//		String[] names=new String[30];
//		String[] password=new String[names.length];
//		
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		while(true){
//		System.out.println("       欢迎登录系统");
//		System.out.println("==================");
//		System.out.println("     1.登录");
//		System.out.println("     2.注册");
//		System.out.println("     3.退出");
//		System.out.println("==================");
//		System.out.println("请选择：");
//		int n =input.nextInt();
//		
//		if(n==1){
//			System.out.println("你选择了登录");
//			System.out.println("===============");
//			System.out.println("用户名：");
//			String name=input.next();
//			System.out.println("密码：");
//			String pass=input.next();
//			
//			for(int i=0;i<names.length;i++){
//				if(names[i]==null){
//					System.out.println("用户名不存在！");
//					break;
//				}
//				if(names[i].equals(name)&&password[i].equals(pass)){
//					System.out.println("登录成功!");
//					break;
//				}
//			}
//			
//		}else if(n==2){
//			System.out.println("你选择了注册！");
//			System.out.println("=============");
//			System.out.println("用户名：");
//			String name1=input.next();
//			System.out.println("密码：");
//			String pass1=input.next();
//			for(int i=0;i<names.length;i++){
//				if(names[i]!=null &&name1.equals(names[i])){
//					System.out.println("用户名已经被占用！");
//					break;
//				}else{
//					names[i]=name1;
//					password[i]=pass1;
//					System.out.println("注册成功！");
//					break;
//				}
//			}
//			
//		}else if(n==3){
//			System.out.println("退出成功！");
//			break;
//		}else{
//			System.out.println("选择错误！");
//		}
//		
//		}
	}
}