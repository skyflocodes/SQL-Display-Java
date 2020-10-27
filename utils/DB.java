package utils;

import models.Participant;

import java.sql.*;
import java.util.ArrayList;

public class DB {
    private static String username = "root";
    private static String password = "TheTiger-007";

    public static ArrayList<Participant> getAllParticipants() throws SQLException {
        ArrayList<Participant> participants = new ArrayList<>();
        Connection conn = null;
        Statement sqlStatement = null;
        ResultSet resultSet = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portroyale",username,password);
            sqlStatement = conn.createStatement();
            resultSet = sqlStatement.executeQuery("SELECT * FROM portroyale.portrecords;");
            while (resultSet.next()){
                Participant newParticipant = new Participant(resultSet.getInt("Place"),
                                                                resultSet.getString("User"),
                                                                resultSet.getInt("Score"),
                                                                resultSet.getString("GPU"),
                                                                resultSet.getString("CPU"));
                    participants.add(newParticipant);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            if(conn!= null){
                conn.close();
            }
            if(resultSet != null){
                resultSet.close();
            }
            if (sqlStatement != null){
                sqlStatement.close();
            }
            return participants;
        }
    }
}
