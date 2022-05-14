package com.example.projetentreprise.beans;

import java.util.ArrayList;
import java.util.List;

public class Panier {

    private List<Panier> list;
    private Panier panier;

    public Panier() {
        list = new ArrayList<Panier>();
        panier = new Panier();
    }

    public List<Panier> getList() {
        return list;
    }

    public void setList(List<Panier> list) {
        this.list = list;
    }

    public Panier getPanier() {
        return panier;
    }

    public void setPanier(Panier panier) {
        this.panier = panier;
    }
}