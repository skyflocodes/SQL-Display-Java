package controllers;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import utils.DB;
import utils.SceneChange;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;


public class ChartViewController implements Initializable {
    @FXML
    private BarChart<String, Integer> scoreChart;

    @FXML
    private CategoryAxis userAxis;

    @FXML
    private NumberAxis scoreAxis;

    private XYChart.Series<String, Integer> scoreSeries;


    public void changeToTableView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/TableView.fxml", "Port Royale Records - Table View");
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        scoreSeries=new XYChart.Series<>();

        scoreChart.setTitle("Top User Scores!");
        try {
            scoreSeries = DB.getChartInfo();
            scoreChart.getData().addAll(scoreSeries);
            scoreChart.legendVisibleProperty().set(false);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
