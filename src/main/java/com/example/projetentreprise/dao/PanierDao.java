package com.example.projetentreprise.dao;

import java.util.List;

public class PanierDao {

        private List<String> produit;
        private String commercant, categorie, localisation;

        public List<String> getProduit() {
            return produit;
        }

        public void setProduit(List<String> produit) {
            this.produit = produit;
        }

        public String getCommercant() {
            return commercant;
        }

        public void setCommercant(String commercant) {
            this.commercant = commercant;
        }

        public String getCategorie() {
            return categorie;
        }

        public void setCategorie(String categorie) {
            this.categorie = categorie;
        }

        public String getLocalisation() {
            return localisation;
        }

        public void setLocalisation(String localisation) {
            this.localisation = localisation;
        }

        public PanierDao(List<String> produit, String commercant, String categorie, String localisation) {
            this.produit = produit;
            this.commercant = commercant;
            this.categorie = categorie;
            this.localisation = localisation;
        }

        public PanierDao() {
        }
    }