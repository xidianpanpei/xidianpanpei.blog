---
title: �����㷨֮��������
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201308171616
tags:
  - �㷨
  - ��������
---

�������Ƿ���һ�¡��㷨���ۡ��еġ��������򡹣��ڼ����У��ƺ��ǵ�����ʵ��Ӧ����ʹ�õ����������㷨�ˣ�������������һ�����ȵ��������㷨�����������򡹵�ƽ�����ܿ������Ƿǳ��õģ����������ȶ�������������Ļ�����Ҳ�Ƿǳ����ġ����ڡ�����������˵������ֻ�ܶ���������ʱ�临�Ӷ��������ƣ���(nlgn)��

���㷨���ۡ��и����ˡ������������µ�α��ʵ�֣�˵ʵ�����Ҳ����Ǻ�ϲ������д������Ϊ��ʱ�����ַ�ʽ���������˿����ˣ�������ʵ�ʴ�������ֱ�����ˡ�

    PARTITION(A, p, r)
    x = A[r]
    i = p - 1
    for j = p to r-1
        if A[j] <= x
            i = i + 1
            exchange A[i] with A[j]
    exchange A[i + 1] with A[r]
    return i + 1
    
    QUICKSORT(A, p, r)
    if p < r
        q = PARTITION(A, p, r)
        QUICKSORT(A, p, q - 1)
        QUICKSORT(A, q + 1, r)

������������Javaʵ�������������㷨����Ȼ����ʽ��Щ��ͬ������˵����Щ�Ż����߼򻯰ɣ�������ʽ�ƺ������������Ǳ������м��ء�

    package com.test;
    
    /**
     * @author crazylion
     *
     */
    public class SortTest
    {
        public void quickSort(int[] a, int left, int right)
        {
            if (left < right)
            {
                int key = a[left];
                int low = left;
                int high = right;
                
                while(low < high)
                {
                    while(low < high && a[high] > key)
                    {
                        high--;
                    }
                    a[low] = a[high];
                    
                    while(low < high && a[low] < key)
                    {
                        low++;
                    }
                    a[high] = a[low];
                }
                
                a[low] = key;
                
                quickSort(a, left, low - 1);
                quickSort(a, low + 1, right);
            }
        }
        
        public static void main(String[] args)
        {
            int[] temp = new int[11];
            for(int i = 1; i <= 10; i++)
            {
                temp[i] = (int) (Math.random()*1000);
                System.out.println("==>" + temp[i]);
            }
            
            System.out.println("================================");
            
            SortTest sortTest = new SortTest();
            sortTest.quickSort(temp, 1, 10);
                    
            for(int i = 1; i <= 10; i++)
            {
                System.out.println("-->" + temp[i]);
            }
        }
    }

�����Ǿ���ʵ�����еģ�Ч�����ǲ���Σ�