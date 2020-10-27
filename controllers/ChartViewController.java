package controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import utils.SceneChange;

import java.io.IOException;



public class ChartViewController {
    @FXML
    private BarChart<String, Integer> userChart;

    public void changeToTableView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/TableView.fxml", "Port Royale Records - Table View");
    }
}
