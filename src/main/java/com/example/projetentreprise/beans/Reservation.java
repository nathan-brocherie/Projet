package com.example.projetentreprise.beans;

public class Reservation {

    private String num;

    private String[] produit, commercant, localisation, catégorie;

    public Reservation(){
        produit = new String[10];
        commercant = new String[10];
        localisation = new String[10];
        catégorie = new String[10];
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String[] getProduit() {
        return produit;
    }

    public void setProduit(String[] produit) {
        this.produit = produit;
    }

    public String[] getCommercant() {
        return commercant;
    }

    public void setCommercant(String[] commercant) {
        this.commercant = commercant;
    }

    public String[] getLocalisation() {
        return localisation;
    }

    public void setLocalisation(String[] localisation) {
        this.localisation = localisation;
    }

    public String[] getCatégorie() {
        return catégorie;
    }

    public void setCatégorie(String[] catégorie) {
        this.catégorie = catégorie;
    }
}
