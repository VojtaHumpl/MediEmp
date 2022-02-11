package helpers;

import org.jetbrains.annotations.NotNull;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Helpers {

    private static final Scanner sc = new Scanner(System.in);

    public static String[] parseSingleResponse(ResultSet res) {
        String[] response = new String[0];
        try {
            var meta = res.getMetaData();
            response = new String[meta.getColumnCount()];
            for (int i = 1; i < meta.getColumnCount() + 1; i++) {
                response[i - 1] = res.getString(i);
                /*if (i + 1 == meta.getColumnCount() + 1)
                    response += res.getString(i);
                else
                    response += res.getString(i) + ", ";*/
            }
            //System.out.println(response);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return response;
    }

    public static String bytesToHex(byte @NotNull [] hash) {
        StringBuilder hexString = new StringBuilder(2 * hash.length);
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }

    public static int loadOption(){
        int res = sc.nextInt();
        sc.nextLine();
        return res;
    }
}
