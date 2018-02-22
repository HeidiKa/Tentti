package fi.academy;

import java.sql.*;

public class Main {
    public static void main(String[] args) {
        try{
            Yhteys.luoYhteys();
            Kysymys.annaKysymys(Yhteys.luoYhteys(),Kyselija.randomHaku() );
            KayttajanSyote.kysyKayttajalta();
        }catch (ClassNotFoundException|SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
