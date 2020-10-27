package utils;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.XYChart;
import models.Participant;

import java.sql.*;
import java.util.ArrayList;

/**
 * database utility
 */
public class DB {
    private static String username = "student";
    private static String password = "student";

    /**
     * retrive the entire port royale table from local database
     * @return
     * @throws SQLException
     */
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

    /**
     * retrive users and their scores from port royale database
     * @return
     * @throws SQLException
     */
    public static XYChart.Series<String, Integer> getChartInfo() throws SQLException {
        XYChart.Series<String, Integer> chartInfo = new XYChart.Series<>();
        Connection conn = null;
        Statement sqlStatement = null;
        ResultSet resultSet = null;
        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portroyale",username,password);
            sqlStatement = conn.createStatement();
            resultSet = sqlStatement.executeQuery("SELECT * FROM portroyale.portrecords;");
            while (resultSet.next()){
                XYChart.Data<String, Integer> chartData = new XYChart.Data<String, Integer>(resultSet.getString("User"),
                        resultSet.getInt("Score"));
                chartInfo.getData().add(chartData);
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
            return chartInfo;
        }
    }
}
