package com.example.projetentreprise.dao;

public class AdminDao {
    public static boolean login(String mp){
        return mp.equals("admin");
    }
}
