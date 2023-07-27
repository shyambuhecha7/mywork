package com.example.javapractice;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class B {
    public static void main(String[] args) {
        List list = new ArrayList();
        list.add(10);
        list.add("a");

        Map<Integer, String> map = Map.of(1, "A", 2, "B", 3, "C", 4, "D");
        map.put(5, "E");
        System.out.println(map);

    }
}