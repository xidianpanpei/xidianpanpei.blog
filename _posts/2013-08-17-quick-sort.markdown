---
title: 基础算法之快速排序
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201308171916
tags:
  - 算法
  - 快速排序
---

今天又是翻了一下「算法导论」中的「快速排序」，在记忆中，似乎记得这是实际应用中使用的最多的排序算法了，尽管它并不是一个很稳当的排序算法。「快速排序」的平均性能看起来是非常好的，但是它不稳定，因而坏起来的话，那也是非常糟糕的。对于「快速排序」来说，我们只能对它的期望时间复杂度做出估计：Ο(nlgn)。

「算法导论」中给出了「快速排序」以下的伪码实现，说实话，我并不是很喜欢这种写法，因为有时候这种方式很容易让人看晕了，还不如实际代码来的直接明了。

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

接下来就是用Java实现了这种排序算法，当然，形式有些不同，或者说是有些优化或者简化吧，这种形式似乎是在严奶奶那本书中有记载。
```java
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
```
代码是经过实际运行的，效果还是不错滴！
