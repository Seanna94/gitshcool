package com.cn.test2;

public class Test2 {
	
	public static void main(String[] args) {
	
		//TODO
		//数组存储用户
		
		String[] name =new String[30];
		String[] pwd =new String[name.length];
		
		while (true) {
			java.util.Scanner sc =new java.util.Scanner(System.in);
			System.out.println("==欢迎登陆管理系统==");
			System.out.println("     1.登陆");
			System.out.println("     2.注册");
			System.out.println("     3.退出");
			System.out.println("====================");
			System.out.print("请选择：");
			int num = sc.nextInt();
			if (num == 1) {
				System.out.println("选择了登陆");
				System.out.println("用户名：");
				String loginName=sc.next();
				System.out.println("密码：");
				String loginPwd=sc.next();
				for (int i = 0; i < name.length; i++) {
					if(loginName.equals(name[i])&&loginPwd.equals(pwd[i])){
						System.out.println("登陆成功！");
					}else{
						System.out.println("用户名或密码错误！");
					}
				}
				
				
			} else if (num == 2) {
				System.out.println("选择了注册！");
				System.out.println("用户名：");
				String name1=sc.next();
				System.out.println("密码：");
				String password1=sc.next();
				for (int i = 0; i < name.length; i++) {
					if(name[i] !=name1 &&name[i]==null){
						name[i]=name1;
						pwd[i]=password1;
						System.out.println("注册成功！");
					}
				} 
				}else if (num == 3) {
					System.out.println("退出成功！");
					break;
			
			} else {
				System.out.println("选择错误！");
			}
		}

		System.out.print("程序运行结束，正常关闭！");
		
		
		
		
		
//		User user =new User();
//	
//		while (true) {
//			java.util.Scanner sc =new java.util.Scanner(System.in);
//			System.out.println("==欢迎登陆管理系统==");
//			System.out.println("     1.登陆");
//			System.out.println("     2.注册");
//			System.out.println("     3.退出");
//			System.out.println("====================");
//			System.out.print("请选择：");
//			int num = sc.nextInt();
//			if (num == 1) {
//				System.out.println("选择了登陆");
//				System.out.println("用户名：");
//				String loginName=sc.next();
//				System.out.println("密码：");
//				String loginPwd=sc.next();
//				
//				if(loginName.equals(user.name)&&loginPwd.equals(user.password)){
//					System.out.println("登陆成功！");
//				}else{
//					System.out.println("用户名或密码错误！");
//				}
//				
//			} else if (num == 2) {
//				System.out.println("选择了注册！");
//				System.out.println("用户名：");
//				user.name=sc.next();
//				System.out.println("密码：");
//				user.password=sc.next();
//				System.out.println("注册成功！");
//				} else if (num == 3) {
//				System.out.println("退出成功！");
//				break;
//			} else {
//				System.out.println("选择错误！");
//			}
//		}
//
//		System.out.print("程序运行结束，正常关闭！");
	}

}