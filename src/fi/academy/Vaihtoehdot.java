package fi.academy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Vaihtoehdot {

    public static void vastaukset(Connection yhteys, int haku) throws SQLException {
        String sql = "Select teksti, vastausid from kysymysvaihtoehdot where kysymysid= ?";
        PreparedStatement prstm = yhteys.prepareStatement(sql);
        prstm.setInt(1,haku);
        ResultSet rs = prstm.executeQuery();
        while (rs.next()) {
            System.out.println(rs.getString("vastausid") +" "+ rs.getString("teksti"));
        }
    }
    public static void onkoOikein(Connection yhteys, int haku) throws SQLException {
        String sql = "Select oikeatvastaukset from kysymysvaihtoehdot where kysymysid=? AND vastausid=?";
        PreparedStatement prstm = yhteys.prepareStatement(sql);
        prstm.setInt(1, haku);
        prstm.setInt(2, KayttajanSyote.getVastaus());
        ResultSet rs = prstm.executeQuery();
        while(rs.next()) {
            String tallennettuVastaus = rs.getString(1);
            if (tallennettuVastaus.equals("F")) {
                System.out.println("Vastasit väärin");
            }
            if (tallennettuVastaus.equals("T")) {
                System.out.println("Oikein vastattu!");
            }
        }

        /*if (KayttajanSyote.getVastaus() == )
            System.out.println("Vastasit väärin");*/
    }
}
