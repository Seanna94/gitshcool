package com.cn.one;

public class array {

	public static void main(String[] args) {
		//��һ��ֵ���������е�һ��δ��ֵ��Ԫ��
		//��֪һ��String��������
		//��������������Ԫ�ر���ֵ
		//������̨�����ֵ��������Ŀ�λ��
		
		java.util.Scanner input =new java.util.Scanner(System.in);
		System.out.println("����������ֵ");
		String a=input.next();
		String[] array=new String[7];
		array[0]="a";
		array[1]="b";
		array[2]="c";
		array[3]="d";
		array[4]="e";
		for(int i=0;i<array.length;i++){
			if(array[i]==null){
				array[i]=a;
				break;
			}
			}
		for(String temp:array){
			if(temp==null){
				break;
			}
			System.out.println(temp);
		}
		
			
				
		//���������е����ֵ
//		int[] array ={100,120,30,140,98,86};
//		int max=array[0];
//		for(int temp:array){
//			if(temp>max){
//				max=temp;	
//			}
//		}
//		System.out.println(max);
		//��������
		//�����±�Ӵ���С����ѭ��
//		String[] array={"a","b","c","d"};
//		for(int i=array.length-1;i>=0;i--){
//			System.out.println(i+":"+array[i]);
//		}
		
//		int[] array={10,15,20,30,40,50};
//		for(int i=0;i<array.length;i++){
//			System.out.println(i+":"+array[i]);
//		}
//		
//		//foreach��������
//		for(int temp:array){
//			System.out.println(temp);
//		}
		
		//����ѭ��¼��5��ѧ���ĳɼ�
//		java.util.Scanner input =new java.util.Scanner(System.in);
//		int[]  array=new int[5];
//		System.out.println("��������5��ѧ���ĳɼ�");
//		for(int i=0;i<array.length;i++){
//			array[i]=input.nextInt();
//			System.out.println(array[i]);
//		}
//		
		//��������ͬʱ��ֵ
//		int[] arr1 ={10,20,30,40,50};
//		int arr3[]={3,4,5,6};
//		System.out.println(arr3[0]);
//		int[] arr2=new int[] {1,2,3,4,5};
//		System.out.println(arr2[0]);
		
		//array   int����Ĭ��ֵΪ0;
		
//		int[]  array =new int[30];
//		System.out.println(array.length);
//		
//		array[0]=1;
//		System.out.println(array[3]);
//		
		//��������
	
//		int[]  array =new int[30];
//	
//		array[0]=20;
//		array[1]=10;
//		array[3]=30;
//		System.out.println(array[0]);
//		System.out.println(array[1]);
//		System.out.println(array[3]);
	}

}