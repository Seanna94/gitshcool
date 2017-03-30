package com.cn.one;

public class variate {
	
	public static void main (String[] args){
		
		//数字猜大小游戏
		//获取100以内的随机数：
		//(int)(Math.random() * 100) + 1;
		//获取用户输入比较比随机数大或小并提示
		//记录猜了多少次
		java.util.Scanner input =new java.util.Scanner(System.in);
		double num =(int)(Math.random()*100)+1;
		System.out.println("猜大小游戏开始！");
		int count=0;
		while(true){
		count++;
		System.out.println("请输入：");
		int n=input.nextInt();
		if(num==n){
			System.out.println("猜对了!一共猜了"+count+"次！");
			break;
		}else if(num>n){
			System.out.println("小了！");
		}else if(num<n){
			System.out.println("大了！");
		}
		}
	
		//菜单功能升级
		//二级菜单退出后重新进入主菜单
		//主菜单退出功能，结束整个程序
		
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		while(true){
//		System.out.println("       欢迎登录管理系统");
//		System.out.println("==================");
//		System.out.println("     1.登录");
//		System.out.println("     2.注册");
//		System.out.println("     3.退出");
//		System.out.println("==================");
//		System.out.println("请选择：");
//		int n =input.nextInt();
//		if(n==1){
//			System.out.println("登录成功");
//		}else if(n==2){
//			System.out.println("注册成功！");
//		}else if(n==3){
//			System.out.println("退出成功");
//			break;
//		}else{
//			System.out.println("选择错误！");
//		}
//		System.out.println("程序正常退出");
//		}
		
		//循环嵌套
		//实现打印九九乘法表
		//外层循环控制行数，内层循环控制列数
//		for(int i=1;i<=9;i++){
//			for(int n = 1 ; n <=i ; n++){
//				System.out.print(n + "*" + n + "=" + i*n +" ");
//			}
//			System.out.println();
//		}
	
		//每次打印一个*完成矩形的打印
		//执行顺序：12*3  2*3  2*3  41 2*3 2*3 2*3 4 12*3 2*3 2*34
//		for(int a=0;a<3;a++){
//			System.out.print("1");
//			for(int b=0;b<3;b++){
//				System.out.print("2");
//				System.out.print(" *");
//				System.out.print("3");
//			}
//			System.out.print("4");
//		}
		
		
		//外层控制行，内层控制列
//		for(int b=0;b<4;b++){
//			for(int a=0;a<3;a++){
//				System.out.print(" *");
//			}
//			System.out.println(" #");
//			}
			
		//for循环
		//对100以内的奇数求和
		
//		int count=0;
//		for(int a=1;a<=100; a++){
//			if(a % 2==1){
//				count +=a;
//			}
//		}
//		System.out.println(count);
//		
//		int a=0;
//		while(a<50){
//			System.out.println(a);
//			a++;
//		}
//		
//		for(int i=0;i<50;i++){
//			System.out.println(i);
//		}
//		
		
		//判断考试是否合格，不合格则继续考试
//		java.util.Scanner input = new java.util.Scanner(System.in);
//		int score;
//		do{
//			System.out.println("进行编程考试！");
//			System.out.println("考试得分");
//			score =input.nextInt();
//		}while(score<60);
//		System.out.println("考试成绩合格！");
	
//		//选择结构
//		//do-while 先执行,再判断
//		int a=0;
//		do{
//			a++;
//			System.out.println("我喜欢你，第"+a+"次！");
//		}while(a<999);
		
		
		//continue和break
//		int a =0;
//		while(a<5){
//			a++;
//			if(a==4){
//				continue;
//			}
//			System.out.println(a);
//		}
//		
		//while先判断再执行
		//对100以内的偶数求和
//		int a=0;
//		int b=0;
//		while(a<=100){
//			if(a%2==0){
//				a=a+2;
//			}
//			b=b+a;
//			System.out.println(b);
//		}
//		System.out.println(b);
//		
//		int a =0;
//		while(a<50){
//			System.out.println("好好学习，天天向上");
//			a++;
//		}
		
		//输入班级人数求平均分
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		int p=0;
//		int score=0;
//		String str ="y";
//		while ("y".equalsIgnoreCase(str)){
//			System.out.println("请输入成绩：");
//			int s=input.nextInt();
//			p++;
//			score=s+score;
//			System.out.println("是否继续？(y/n)");
//			str=input.next();
//		}
//		System.out.println("平均成绩是："+score/p);
//		
//		
		
//		java.util.Scanner input =new java.util.Scanner(System.in);
//			int pice=0;
//			String str ="y";
//			
//			while("y".equalsIgnoreCase(str)){
//				System.out.println("请输入金额：");
//				int s =input.nextInt();
//				pice=pice+s;
//				System.out.println("是否继续？（y/n）");
//				str=input.next();
//			}
		
//			System.out.println("总金额是："+pice);
		
		
		
//		int a=1;
//		while(a<=1000){
//			System.out.println("你好，第"+ a +"次");
//			a++;
//		}
		
		//实现个人所得税功能
		//TODO
//		个人所得税计算方法：
//		扣除标准3500元/月
//		全月应纳税所额          税率        速算扣除数
//		不超过1500元             3%         0
//		超过1500元至4500元      10%         105
//		超过4500元至9000元      20%         555
//		超过9000元至35000元     25%         1005
//		超过35000元至55000元    30%         2755
//		超过55000元至80000元    35%          	 5505
//		超过80000元             45%                13505
		
		
//		//使用switch语句实现登录界面选择功能
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		System.out.println("       欢迎登录管理系统");
//		System.out.println("==================");
//		System.out.println("     1.登录");
//		System.out.println("     2.注册");
//		System.out.println("     3.退出");
//		System.out.println("==================");
//		System.out.println("请选择：");
//		int a =input.nextInt();
//		switch(a){
//		case 1:
//			a=1;
//			System.out.println("请输入用户名：");
//			String name =input.next();
//			System.out.println("请输入密码：");
//			String pswd=input.next();
//			if(name.equals("tom")&&pswd.equals("123")){
//				System.out.println("登录成功！");
//			}else{
//				System.out.println("用户名或密码错误！");
//			}
//			break;
//		case 2:
//			a=2;
//			System.out.println("请输入用户名：");
//			String name1=input.next();
//			System.out.println("请输入密码：");
//			String pswd1=input.next();
//			if(name1.equals("tom")){
//				System.out.println("用户名已经被占用！");
//			}else{
//				System.out.println("注册成功！");
//			}
//			break;
//		case 3:
//			a=3;
//			System.out.println("退出成功！");
//			break;
//		default:
//			System.out.println("欢迎使用！");
//			break;
//		}
		
		
		
		
		
//		java.util.Scanner input=new java.util.Scanner(System.in);
//		System.out.println("请输入消费金额：");
//		int a=input.nextInt();
//		if(a < 2000 && 0 < a){
//			a=(int)(a*0.9);
//		}else if(a>=2000 && a<4000){
//			a=(int)(a*0.8);
//		}else if(a>=4000 &&a<5000){
//			a=(int)(a*0.7);
//		}else if(a>=5000){
//			a=(int)(a*0.6);
//		}
//		
//		System.out.println("实付金额是："+a);
		
		//实现满100减10的功能
//		java.util.Scanner input=new java.util.Scanner(System.in);
//		System.out.println("请输入消费金额：");
//		int a=input.nextInt();
//		if(a>100){
//			a=a-10;
//			System.out.println(a);
//		}else{
//			System.out.println(a);
//		}
//		
		//实现单用户/两个用户登录
//		java.util.Scanner input=new java.util.Scanner(System.in);
//		System.out.println("请输入用户名：");
//		String name=input.next();
//		System.out.println("请输入密码");
//		String pswd =input.next();
//		
//		if(((name.equals("tom")) && pswd.equals("123")) 
//				||((name.equals("jim"))&& pswd.equals("567"))){
//			System.out.println("登录成功！");
//		}else{
//			System.out.println("登录失败！");
//		}
//		
		
		//三元运算符
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		System.out.println("请输入一个数字");
//		int a =input.nextInt();
//		boolean b=a%2==1;
//		String message=b ? "你输入的是一个奇数" : "你输入的是一个偶数";
//		System.out.println(message);
		
		
		//判断奇偶数
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		System.out.println("请输入一个数字");
//		int a =input.nextInt();
//		boolean b= a% 2 ==1;
//		if(b){
//			System.out.println("这是一个奇数");
//		}else{
//			System.out.println("这是个偶数");
//		}
//		
	
		//输入半径求圆的面积并输出
//		java.util.Scanner input = new java.util.Scanner(System.in);
//		System.out.println("請輸入圓的半徑：");
//		int a =input.nextInt();
//		//float PI= 3.14f;
//		double PI=3.14;
//		double s=a*a*PI;
//		System.out.println("圓的面積是："+s);
		
		//兩數互換
//		int a=11;
//		int b=22;
//		int c=a;
//		a=b;
//		b=c;
//		System.out.println(a);
//		System.out.println(b);
	
		//强制類型轉換
//		long i=100;
//		int n=(int)i;
//		System.out.println(n);
		
		//boolean類型
//		boolean b=1>2;
//		System.out.println(b);
//		
//		boolean a=1<2;
//		System.out.println(a);
		
//		boolean a=(1>2)&&(2>1);
//		boolean b=(1>2)||(2>1);
//		boolean c=!(1>2);
//		System.out.println(a);
//		System.out.println(b);
//		System.out.println(c);
//		
			
	//将一个四位数进行拆分，分别输出每位数字
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		System.out.println("請輸入一個四位數");
//		int a=input.nextInt();
//		System.out.println("四位數的千位是："+a/1000);
//		System.out.println("四位數的百位是："+a/100%10);
//		System.out.println("四位數的十位是："+a/10%10);
//		System.out.println("四位數的個位是："+a/1%10);
//		
		
	
//2		java.util.Scanner input=new java.util.Scanner(System.in);
//		System.out.println("請輸入一個數字");
//		int a =input.nextInt();
//		System.out.println(a);
//		
//		System.out.println("請輸入一個字符串");
//		String str =input.next();
//		System.out.println(str);
//		
		
		
// 1	double score =95;
//		String name ="lilei";
//		char sex ='男';
//		System.out.println(score);
//		System.out.println(name);
//		System.out.println(sex);
//		
//		int num1= 10;
//		System.out.println(num1++);
//		
//		System.out.println(num1);

	
	}

}
